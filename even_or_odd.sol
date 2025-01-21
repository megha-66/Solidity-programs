//SPDX License-Identifier : MIT
pragma solidity  ^0.8.0;

contract  evenoddcheck{

    uint256  num = 437612;

    function checknum()  public view returns(string memory){
          if  (num%2 == 0){
            return  ("Number is even!");
          }
          else{
            return ("Number is odd!");
          }            
    }
}
