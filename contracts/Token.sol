// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    string public _name;
    string public _symbol;
    uint public _decimal;
    uint public _totalSupply;
    address public _minter;

    mapping(address => uint) balances;

    constructor() {
        _symbol = "AC";
        _name = "AJNIN COIN";
        _decimal = 0;
        _totalSupply = 100;
        _minter = 0xEbb2B7eB0957362707b23e95B2883BFdef1Ce7f0;

        balances[_minter] = _totalSupply;
    }

    event Transfer(address from, address to, uint256 value);

    function balanceOf(address account) public view returns (uint256) {
    return balances[account];
    }

    function mint(address account, uint amount) public returns(bool) {
        balances[account] += amount;
        _totalSupply += amount;
        emit Transfer(msg.sender, account, amount);
        return true;
    }

    function burn(address account, uint amount) public  {
       uint accountBalances = balances[account];
       require(accountBalances >= amount, "exceed burn amount");
       balances[account] = accountBalances - amount;
       _totalSupply -= amount;
       emit Transfer(msg.sender, account, amount);
    }

}