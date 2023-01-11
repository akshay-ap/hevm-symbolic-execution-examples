// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8;

contract Token {
    mapping(address => uint) public balanceOf;

    constructor(uint supply) public {
        balanceOf[msg.sender] = supply;
    }

    function transfer(address receiver, uint256 value) public {
        require(balanceOf[msg.sender] <= value);
        balanceOf[msg.sender] -= value;
        balanceOf[receiver] += value;
    }
}
