// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract HelloWorld {

    uint number;

    function retriveNumber() public view returns(uint) {
        return number;
    }

    function storeNumber(uint _num) public {
        number = _num;
    }
}

