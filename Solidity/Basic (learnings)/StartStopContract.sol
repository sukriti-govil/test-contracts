pragma solidity ^0.8.0;

contract StartStopContract {
    bool public paused;
    address owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    function receiveFunds() public payable {
        
    }
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function setPause(bool _pause) public {
            require(msg.sender == owner,"Only owner can pause the contract.");
            paused = _pause;
            
            
            
    }
    
    function transferAllFunds(address payable _to) public {
       require(_to == owner,"Not OWner;discrd operation");
       require(paused == false,"Account is paused");
        _to.transfer(this.getBalance());
        
        
    }
    
    function destroyContract() public {
        require(msg.sender == owner,"not owner");
        selfdestruct(payable(owner));
    }
    
}