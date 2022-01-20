pragma solidity ^0.8.0; 

contract PlayWithBool {
    bool public firstCondition;
    bool public secondCondition;
    
    function AssignValues(bool _firstCondition, bool _secondCondition) public {
        firstCondition = _firstCondition;
        secondCondition = _secondCondition;
    }
    
    function provideResult() public view returns(bool) {
        if(firstCondition && secondCondition) {
            return true;
        }
        else {
            return false;
        }
    }
}