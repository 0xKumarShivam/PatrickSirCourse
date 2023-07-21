//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";
contract AddFiveStorage is SimpleStorage {
   // +5
   //override
   //virtual override
function store (uint256 _newNumber) public override{
    myFavoriteNumber = _newNumber + 5;
}
//store function of SimpleStorage contains virtual so it is overridable.
}

