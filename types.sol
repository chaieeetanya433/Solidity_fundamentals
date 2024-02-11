//types 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    //boolean, uint, int, address, bytes => types
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 5;  //we can specify using uint how many bits we want to allocate for the variable
    string favoriteNumberInText = "Five";
    int256 favoriteInt = -5;
    address myAddress = 0xC4e3F61ae6a30471227f8B6df69b192d493CDCa1;
    bytes32 favoriteBytes = "cat";    
}
