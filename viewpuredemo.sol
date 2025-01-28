//SPDX-License-Identifier : MIT
pragma solidity  0.8.26;

contract viewpuredemo{
    uint storedsv = 23;

    function getStoredData() external view returns(uint){
        return storedsv;
    }//this is a 'view' function which reads the stored  state variable but doesnot modify it!

    function addnums(uint a, uint b) external pure returns (uint){
        return a+b;
    }  //This is a 'pure' function which performs some operation or calculation,but doesnot read or modify the state
}

