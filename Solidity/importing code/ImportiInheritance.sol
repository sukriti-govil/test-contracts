// importing of smart contract
pragma solidity ^0.8.0;
import "./Owner.sol" ;
/* contract Owner {
    address public owner;
    
     constructor() public {
        owner = msg.sender;   
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not an owner"); 
        _;
    }
} import */

contract Wallet is Owner {
    // address public owner;  .... inheritance
    mapping(address => uint) public balance; //receiving the money = balance
    
    // constructor() public {
    //        owner = msg.sender;   .... inheritance
    // }
    //book-keeping the money received
    function setWalletBalance() internal {
        balance[msg.sender] += msg.value;
    }
    
    //fallback function which accepts the money send to the smart contract
    receive() external payable {
        setWalletBalance();
    }
    
    // modifier onlyOwner() {
    //    require(msg.sender == owner, "You are not an owner"); .... inheritance
    //    _;
    //}

    function transferOneBehalf(address _fromAddress, address _toAddress, uint _amount) public onlyOwner {
       // require(msg.sender == owner, "You are not an owner");   ----> without modifier
        assert(balance[_fromAddress] > (balance[_fromAddress] - _amount));
        
        // we're adjusting the reduced amount from the particular wallet balance
        balance[_fromAddress] -= _amount;
        
        balance[_toAddress] += _amount;
        
        //we are actually transferring the amount to the destined address
        //transfer(_amount);  ------> you can't transfer rewarded currency to actual currency 
    
    }
    
    
    function destroySmartContract(address _address) public onlyOwner {
       // require(_address == owner,"You are not an owner");    -----> without modifier
        selfdestruct(payable(owner));
    }
}


// The account which deployed the smart contract will be the owner. msg.sender can give the address of the current selected account