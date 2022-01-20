pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/utils/math/SafeMath.sol";

contract Library {
    using SafeMath for uint;
    
    mapping(address => uint) public tokenBalance;
    
    function buyToken() payable public {
        tokenBalance[msg.sender] = tokenBalance[msg.sender].add(toEther(msg.value));
    }
    
    function toEther(uint _inWei) internal pure returns(uint) {
        return _inWei/ 1 ether;
    }
    
    function transferToken(address _toAddress, uint token) public {
        tokenBalance[msg.sender] = tokenBalance[msg.sender].sub(token);
        tokenBalance[_toAddress] = tokenBalance[_toAddress].add(token);
        }
}


contract LibraryUsageMethod2 {
   
    
    mapping(address => uint) public tokenBalance;
    
    function buyToken() payable public {
        tokenBalance[msg.sender] = SafeMath.add(tokenBalance[msg.sender], toEther(msg.value));
    }
    
    function toEther(uint _inWei) internal pure returns(uint) {
        return _inWei/ 1 ether;
    }
    
    function transferToken(address _toAddress, uint token) public {
        tokenBalance[msg.sender] = SafeMath.sub(tokenBalance[msg.sender], token);
        tokenBalance[_toAddress] = SafeMath.add(tokenBalance[_toAddress], token);
        }
}