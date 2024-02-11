//external and internal function call
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    
    uint256 public favoriteNumber;  //global scope

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        retrieve();     //calling functions doesn't cost any gas unless you make a function call inside the code of the smart contract
        //without retrieve() func call it costs transaction cost- 43740 gas and execution cost - 22536 gas
        //with retrieve() func call it costs transaction cost- 43879  gas and execution cost - 22675 gas
    }  

    
    //view and pure functions when called alone, don't spend gas and thus making these function calls doesn't actually make any transactions 
    //view and pure functions disallow modifications of state of variables
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // function add() public pure returns(uint256) {
    //     return(1+1);
    // }
}

//this is the address where this contract is deployed
//0xd9145CCE52D386f254917e481eB44e9943F39138