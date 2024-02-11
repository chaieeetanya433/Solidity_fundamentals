//mapping 
//deployed first smart contract on metamask sepolia testnet using account 1 

smart contract code- SimpleStorage.sol:
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    
    uint256 favoriteNumber;  //global scope
    //manual way to create different objs of same type 

    mapping(string => uint256) public nameToFavoriteNumber;

    //user defined type 
    struct People {
        uint favoriteNumber;
        string name;
    }

    People[] public people;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }  
    
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    //calldata, memory, and storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

//verify at https://sepolia.etherscan.io/address/0x9500949263f64066C5ED1c48B5a9EbC902386A0f


