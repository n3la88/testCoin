/**
 *Submitted for verification at sepolia-optimm.etherscan.io on 2024-07-19
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract testCoin{

mapping(address => uint) public balances;
string ticker;
uint limit;
bool burneable;
address minter;

constructor(){
    minter = msg.sender;
    //limite
    //ticker
    //owners
}

function mint(address _receiver, uint _amount) public {
    require(msg.sender == minter, "You are not the owner!");
    //require(total + amount <= limit, "Limit reached!");
    balances[_receiver] += _amount;    
}

function send(address _receiver, uint _amount) public {
    require(_amount <= balances[msg.sender], "Insufficient balance!");
    balances[msg.sender] -= _amount;
    balances[_receiver] += _amount;
}

}
