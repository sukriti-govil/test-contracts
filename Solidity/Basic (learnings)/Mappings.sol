pragma solidity ^0.8.0;
 
contract Mappings {
    mapping(string => uint256) public StudentRankings;
     mapping(uint256 => string) public StudentName;
    
    function setStudentRanking(string memory name, uint rankings) public {
        StudentRankings["k"]=2;
        StudentRankings[name] = rankings;
        
        StudentName[rankings] = name;
        StudentName[3]="k";
    }
     
}