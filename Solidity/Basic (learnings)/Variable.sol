pragma solidity ^0.7.0;

contract Variables {
    int public count; 
    function IncrementCount(int IncrementBy) public
    {
        count+= IncrementBy;
    }
    bool public opinion; 
    function change(bool op1) public
    {
        opinion = op1;
    }
    string public name;
    function new1(string memory NewName) public
    {
        name = NewName;
    }
    address public account;
    function setadd(address acc1) public
    {
        account = acc1;
    }
    function getbal() public view returns(uint)
    {
        return account.balance;
        
    }
}
