/**
 * This smart contract code is Copyright 2018 CHATTER TECH 
 *
 * Licensed under the Apache License, version 2.0: https://github.com/chattertechno/ICO/blob/master/LICENSE.txt
 */

pragma solidity ^0.4.8;

import "./BurnableToken.sol";
import "./CrowdsaleToken.sol";

/**
 * A crowdsaled token that you can also burn.
 *
 */
contract BurnableCrowdsaleToken is BurnableToken, CrowdsaleToken {

  function BurnableCrowdsaleToken(string _name, string _symbol, uint _initialSupply, uint _decimals, bool _mintable)
    CrowdsaleToken(_name, _symbol, _initialSupply, _decimals, _mintable) {

  }
}
