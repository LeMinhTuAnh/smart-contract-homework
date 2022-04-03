//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20CappedUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract Keeys is ERC20CappedUpgradeable, OwnableUpgradeable{

    function intitalize(string memory name, string memory symbol, uint256 cap) public initializer {
        __ERC20_init(name, symbol);
        __Ownable_init();
        __ERC20Capped_init(cap);
    }

    
    function issueToken(address payable miner, uint256 amount) public onlyOwner{
        _mint(miner, amount);
    } 

}