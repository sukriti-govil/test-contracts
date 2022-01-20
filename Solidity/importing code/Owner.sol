pragma solidity ^0.8.0;

contract Owner {
    address public owner;
    
     constructor() public {
        owner = msg.sender;   
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not an owner"); 
        _;
    }
}