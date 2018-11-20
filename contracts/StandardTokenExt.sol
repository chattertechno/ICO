/**
 * This smart contract code is Copyright 2018 CHATTER TECH 
 *
 * Licensed under the Apache License, version 2.0: https://github.com/chattertechno/ICO/blob/master/LICENSE.txt
 */

pragma solidity ^0.4.14;

import "zeppelin/contracts/token/ERC20/StandardToken.sol";
import "./Recoverable.sol";


/**
 * Standard EIP-20 token with an interface marker.
 *
 * @notice Interface marker is used by crowdsale contracts to validate that addresses point a good token contract.
 *
 */
contract StandardTokenExt is StandardToken, Recoverable {

  /* Interface declaration */
  function isToken() public constant returns (bool weAre) {
    return true;
  }
}