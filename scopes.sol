//scopes:
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    
    uint256 public favoriteNumber;  //global scope

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        // uint256 testVar = 5;    //local scope
    }  

    // function something() public {
    //     testvar = 6;    //testvar has the local scope inside the store function only outside it is not accessible
    // }
}