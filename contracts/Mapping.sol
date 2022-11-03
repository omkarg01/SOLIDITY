// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    mapping(address => string) public myMap;

    function get(address _addr) public view returns (string memory){
        return myMap[_addr];
    }

    function set(address _addr, string memory _i) public {
        myMap[_addr] = _i; 
    }    

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}