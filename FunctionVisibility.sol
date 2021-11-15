// SPDX-License-Identifier: ISC

pragma solidity ^0.8.10;

/// @title A cheat-sheet for function visibility in Solidity
/// @author Warren Dubery
/// @notice This file demonstrates how the visibility of functions affects how they can be called

/*
The four visibility keywords available for functions are:
private, internal, external, public
*/


contract FuncVis {
    
    // A private function may be called within this contract only
    function privateFunc() private pure returns(string memory) {
        return("This is a private function");
    }
    
    // An internal function ay be called within this contract PLUS any derived contracts
    function internalFunc() internal pure returns(string memory) {
        return(privateFunc());
    }    
    
    // Public functions can be called by this contract, its derivatives AND outside contracts
    function publicFunc() public pure returns(string memory) {
        return(internalFunc());
    }
    
    // External functions cannot be called within the same contract OR its derivatives
    function externalFunc() external pure returns(string memory) {
        return("This is an external function");
    }
    
    // The following function would cause an error at compile time
    /*
    function errorFunc() public pure returns(string memory) {
        return(externalFunc());
    }
    */
}