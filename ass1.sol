//SPDX License-Identifier : MIT
pragma solidity  ^0.8.0;

contract mappingdemo{

    struct Student{
        string name;
        string subject;
        uint8 marks;
    }

    mapping(address  =>  Student) result;
    address[]  public student_result;

    function adding_values()   public{
        Student memory student = result[0xDEE7796E89C82C36BAdd1375076f39D69FafE252];

        student.name = "John";
        student.subject = "Chemistry";
        student.marks = 88;
        student_result.push(0xDEE7796E89C82C36BAdd1375076f39D69FafE252);
    }

    function get_student_res() public view returns (address[] memory)
{
    return student_result;
}

    function count_students() public view returns(uint){
        return student_result.length;
    }
}