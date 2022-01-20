pragma solidity ^0.8.0;

contract SendMoney {
    uint public contractBalance;
    function ReveiveAmount () public payable {
        contractBalance += msg.value;
    }
    
    function getAccountBal() public view returns(uint){
    return address(this).balance;
    }
    
    function withdrawAmount() public {
        // we'll store the address of the current sender using the global variable msg.sender
        address  payable to = payable(msg.sender);
        // we'll fetch the amount stored in the contract using the function balance()
        uint transferAmount = this.getAccountBal();
        to.transfer(transferAmount);
    }
    
    function withdrawToAddress(address payable _toAddress) public {
        _toAddress.transfer(this.getAccountBal());
    }
}