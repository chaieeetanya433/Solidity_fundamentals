//memory, storage, and calldata

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    
    uint256 favoriteNumber;  //global scope
    //manual way to create different objs of same type 
    // People public person1 = People({favoriteNumber:3, name: "Chaitanya"});
    // People public person2 = People({favoriteNumber:5, name: "Shree"});
    // People public person3 = People({favoriteNumber:6, name: "Anjali"});

    //using arrays
     


    //user defined type 
    struct People {
        uint favoriteNumber;
        string name;
    }

    // uint256[] public favoriteNumbersList;
    //dynamic array of any size, can define the size within the [] braces
    People[] public people;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }  
    
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    //evm can store information in calldata, memory, storage, stack, code, logs
    //calldata(temporary variable that can't be modified), memory(temporary that can be modified), storage(permanant variable that can be modified)
    //why we used memory for _name and not for _favoriteNumber
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
    }

}