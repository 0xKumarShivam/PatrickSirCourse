//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
//uint256 public favoriteNumber
//type visiblity name

SimpleStorage[] public listOfSimpleStorageContracts;


function createSimpleStorageContract() public {
    //how does storage factory knows about simpleStorage contract;
    SimpleStorage newSimpleStorageContract = new SimpleStorage();
    listOfSimpleStorageContracts.push(newSimpleStorageContract);

}

function sfStore(uint256 _simpleStorageIndex,uint256 _newSimpleStorageNumber) public{
    //address
    //ABI
    SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
    mySimpleStorage.store(_newSimpleStorageNumber);

}

function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrive();
    

}

}




