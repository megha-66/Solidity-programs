// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Factorial {
    // Function to calculate the factorial of a number
    function getFactorial(uint256 number) public pure returns (uint256) {
        require(number >= 0, "Number must be non-negative");
        uint256 factorial = 1;
        for (uint256 i = 1; i <= number; i++) {
            factorial *= i;
        }
        return factorial;
    }
}
