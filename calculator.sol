//SPDX License-Identifie : MIT
pragma solidity ^0.8.0;

contract calculator{

    function add(int256 a, int256 b) public pure returns(int256){
        return  a+b;
    }

    function subtract(int256 a,int256 b) public pure returns(int256){
        return a-b;
    }

    function mul(int256 a, int256 b) public pure returns(int256){
        return  a*b;
    }
     
    function  div(int256 a, int256 b) public pure returns(int256){
        require(b!=0,  "Division by zero is not allowed!");
        return a/b;
    }

    function calculate(int256 a, int256 b, string memory operation) public pure returns(int256 result){
        if (keccak256(abi.encodePacked(operation)) == keccak256(abi.encodePacked("add"))) {
            result = add(a, b);
        } else if (keccak256(abi.encodePacked(operation)) == keccak256(abi.encodePacked("subtract"))) {
            result = subtract(a, b);
        } else if (keccak256(abi.encodePacked(operation)) == keccak256(abi.encodePacked("multiply"))) {
            result = mul(a, b);
        } else if (keccak256(abi.encodePacked(operation)) == keccak256(abi.encodePacked("divide"))) {
            result = div(a, b);
        } else {
            revert("Invalid operation");
        }
    }
}
