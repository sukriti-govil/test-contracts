pragma solidity ^0.8.0;

contract FallbackExample {
    // function to receive funds in the smart contract
    // function recieve() public payable {
    // }
    
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    receive() external payable {
        
    }
    
    //example of a pure functions - no interference of outside scope variable or function
    function convertWeiToEther(uint _inWei) public pure returns(uint) {
        return _inWei / 1 ether;
    }
}