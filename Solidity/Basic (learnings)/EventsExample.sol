pragma solidity ^0.8.0;

// explaining events

contract Events {
    //fallback function to receive ethers
    receive() external payable {
        
    }
    
    event GET_BALANCE_EVENT(uint amountleft );
    
    // function to get the contract balance
    function getBalance() public returns(uint) {
        emit GET_BALANCE_EVENT(address(this).balance);
        return address(this).balance;
    }
}