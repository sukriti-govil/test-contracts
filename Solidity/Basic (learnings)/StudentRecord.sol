pragma solidity ^0.8.0;

contract StudentRecord {
    struct Student {
        string name;
        uint8 age;
    }
    
    mapping(uint8 => Student) public studentRecord; //mapping to store student by it's serial number
    
    function setStudentRecord(string memory name, uint8 age, uint8 serialNumber) public {
        Student memory stud = Student(name, age);
        // <struct name> memory variableName = <struct name>(datamember0, datamember1, datamember2);
        // we use memory in struct, since struct are reference type variable so we need to allocate a space to them
        studentRecord[serialNumber] = stud;
    }
    
    
}