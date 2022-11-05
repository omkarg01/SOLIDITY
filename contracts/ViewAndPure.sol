// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewAndPure {
    uint public x = 1;

    // no change in state, only read from the state
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // no change in state, as well as no read from the state
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}