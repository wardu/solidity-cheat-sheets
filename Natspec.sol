// SPDX-License-Identifier: ISC

pragma solidity ^0.8.0;

    /**************************************************************************/
    /********************************* NATSPEC ********************************/
    /**************************************************************************/

// The title of the contract/interface
/// @title A cheat-sheet for NatSpec in Solidity

// Author's name, only allowed at contract description
/// @author Warren Dubery

// Explanation of what this contract/interface does
/// @notice This file can be used as a template for NatSpec in Solidity

// Any other details that are relevant to developers specifically
/// @dev All function calls are currently implemented without side effects


contract SquareNumber {
    /// @notice Calculates the square of a given number
    /// @dev Other methods could be used, i.e. using **
    /// @param number The number that the user wants to calculate the square of
    /// @return The square of the input number
    function square(uint256 number) external pure returns (uint256) {
        return number * number;
    }
}
