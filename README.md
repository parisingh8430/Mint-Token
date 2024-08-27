# ETH + AVAX Module 3 Project

Metacrafters ETH + AVAX Module 3 Project

## Description
For this project, you will write a smart contract to create your own ERC20 token and deploy it using HardHat or Remix. Once deployed, you should be able to interact with it for your walk-through video. From your chosen tool, the contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens.
This project serves the purpose of fulfilling a requirement for ETH + AVAX PROOF: Intermediate EVM Course of Metacrafters

This project demonstrates the creation and use of a simple ERC20 token.

## Getting Started
For this project, you will write a smart contract to create your own ERC20 token and deploy it using HardHat or Remix. Once deployed, you should be able to interact with it for your walk-through video. From your chosen tool, the contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens.


### Executing the program


1. On the project root, run `npm install`
2. Once the dependencies have been installed, run `remixd` to start the remix daemon
3. On the same location but on another terminal instance, run `npx hardhat node`
4. On Remix, click on workspace selection and select `- connect to localhost -`
5. Compile the contract on Remix
6. Under Deploy & run transactions on Remix, select `Dev - Hardhat Provider` as the Environment
7. Select `MyToken.sol` as the contract
8. Enter the name and symbol for the token
9. Deploy the contract
10. run this code on remix ide

11. // SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {

    address owner;
    
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        owner = msg.sender;
    }

    function mint(address account, uint256 amount) public {
        require(msg.sender == owner, "Only the owner of this contract can mint its tokens");
        _mint(account, amount);
    }
    
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
    
}


