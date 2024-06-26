// SPDX-License-Identifier: MIT
 
pragma solidity >=0.5.0 <0.9.0;

contract Property{
    uint public price;
    address public owner;

    //declaring the constructor
    constructor() {
        price = 0;
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }

    function changeOwner(address _owner) public onlyOwner() {
        require(owner == msg.sender);
        owner = _owner;
    }

    function setPrice(uint _price) public onlyOwner() {
        price = _price;
    }
}