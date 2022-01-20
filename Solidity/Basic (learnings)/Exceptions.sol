pragma solidity ^0.8.0;

contract Wallet {
    mapping(address => uint64) public wallet;
    
    function receiveMoney() payable public {
        wallet[msg.sender] += uint64(msg.value);
    } 
    
    function transferAmount(address payable _toAddress, uint64 amount) public {
        // require(wallet[msg.sender] >= amount, "you don't have enough balance!");
       
        assert(wallet[msg.sender] >= (wallet[msg.sender] - amount));
       
        _toAddress.transfer(amount);
        wallet[msg.sender] -= amount;
    }
    
    
}
