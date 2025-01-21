//SPDX-License-Identifier : MIT
pragma solidity  ^0.8.0;

contract StudentGrades{
    //function to display grades  based on marks 
    function getGrade(uint256 marks) public pure returns(string memory){
        if  (marks >= 90){

           return "A+";

        }    

        else if (marks >= 80){
            return "A";
        }

        else if (marks >= 70){
            return "B+";
        }
        else if (marks>=60){
            return "B";
        }
        else if (marks>=50){
            return "C";
        }
        else if (marks>=40){
            return "D";
        }
        else {
            return "F"; 
        }

    }
}    
