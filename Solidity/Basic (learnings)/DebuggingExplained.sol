pragma solidity ^0.8.0;

contract Debugging {
    bool public mode;
    address public owner;
    uint balance;
    
    function setvalues(bool _mode, address _address) public {
        mode = _mode;
          owner = _address;
    }
    
}