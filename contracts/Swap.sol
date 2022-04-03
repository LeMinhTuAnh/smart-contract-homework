//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";


contract Swaps is Initializable {

    ERC20Upgradeable baseToken;
    address baseOwner;
    ERC20Upgradeable referToken;
    address referOwner;
    
    // refToken =>  ratio-baseToken
    uint256 ratio;

    function initialize(
        address _baseToken, 
        address _referToken,
        uint256 _ratio
    ) public initializer {
        baseToken = ERC20Upgradeable(_baseToken);
        referToken = ERC20Upgradeable(_referToken);
        ratio = _ratio;
    }

    function getBaseToken() public view returns (address) {
        return address(baseToken);
    }

    function getReferToken() public view returns (address) {
        return address(referToken);
    }


    function getRatio() public view returns (uint256) {
        return ratio;
    }

    function swap( uint256 amount, bool swapReferTokenToBaseToken) public{

        if(swapReferTokenToBaseToken){
            referToken.transferFrom(msg.sender, address(this), amount);
            baseToken.transfer(msg.sender, amount  * ratio);
        }else {
            baseToken.transferFrom(msg.sender, address(this), amount);
            referToken.transfer(msg.sender, amount  / ratio);
        }

    }
}
