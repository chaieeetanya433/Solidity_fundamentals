//functions 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    //this is initialized by default as 0 and default visibilty of a variable is internal
    //function visibility specifiers - public, private, external, internal
    uint256 public favoriteNumber;
    //public variable implicitly get assigned a function that returns its value

    //functions
    //the more complex the function is the more computational power it required so the it is directly proportional to the transaction cost
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }  
    
}
//this is the address where this contract is deployed
//0xd9145CCE52D386f254917e481eB44e9943F39138
