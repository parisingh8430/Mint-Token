// SPDX-License-Identifier: MIT
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
// Explicit transfer function
    function transfer(address to, uint256 amount) public override returns (bool) {
        // Call the parent ERC20 transfer function
        return super.transfer(to, amount);
    } 
    
}
