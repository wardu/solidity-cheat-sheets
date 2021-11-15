// SPDX-License-Identifier: ISC

pragma solidity ^0.8.10;

/// @title A cheat-sheet for custom modifiers in Solidity
/// @author Warren Dubery
/// @notice This file demonstrates how custom modifiers can be used


    /**************************************************************************/
    /**************************** CUSTOM MODIFIERS ****************************/
    /**************************************************************************/

contract CustomModifiers {

    address owner;

    // a custom modifier that requires whoever is calling the function is the owner of the contract
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    // Checks that the value sent is above a set fee price
    modifier fee (uint _fee) {
        require(msg.value >= _fee);
        _;
    }

    // same as above, using the "if" method
    modifier fee2 (uint _fee) {
        if (msg.value >= _fee) {
            _;
        }
    }
}