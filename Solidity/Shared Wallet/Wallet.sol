pragma solidity 0.8.0;

contract wallet{
    
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyOWner() {
        require(owner == msg.sender, "You are not allowed");
        _;
    }
    function withdrawMoney(address payable _to, uint _amount) public {
        _to.transfer(_amount);
    }
    receive () external payable {
        
    }
    
}