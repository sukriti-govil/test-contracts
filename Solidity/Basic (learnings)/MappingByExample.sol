pragma solidity ^0.8.0;

contract BalanceTracker {
    
    mapping(address => uint) fundsReceived;
    
    function receiveFunds() payable public {
        fundsReceived[msg.sender] += msg.value;
        //msg.value current transaction value recieved at the moment
        
    }
    
    function shouldBalanceReceivedByAddress(address _inputAddress) public view returns(uint) {
        return fundsReceived[_inputAddress];
    }
}