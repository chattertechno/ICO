/**
 * This smart contract code is Copyright 2018 CHATTER TECH 
 *
 * Licensed under the Apache License, version 2.0: https://github.com/chattertechno/ICO/blob/master/LICENSE.txt
 */

pragma solidity ^0.4.8;

import "./StandardTokenExt.sol";

/**
 *
 * Time-locked token vault of allocated founder tokens.
 *
 * First used by Lunyr https://github.com/Lunyr/crowdsale-contracts
 *
 *
 * See TokenVault for multi user implementation.
 */
contract TimeVault {

  /** Interface flag to determine if address is for a real contract or not */
  bool public isTimeVault = true;

  /** Token we are holding */
  StandardTokenExt public token;

  /** Address that can claim tokens */
  address public teamMultisig;

  /** UNIX timestamp when tokens can be claimed. */
  uint256 public unlockedAt;

  event Unlocked();

  function TimeVault(address _teamMultisig, StandardTokenExt _token, uint _unlockedAt) {

    teamMultisig = _teamMultisig;
    token = _token;
    unlockedAt = _unlockedAt;

    // Sanity check
    if (teamMultisig == 0x0) throw;
    if (address(token) == 0x0) throw;
  }

  function getTokenBalance() public constant returns (uint) {
    return token.balanceOf(address(this));
  }

  function unlock() public {
    // Wait your turn!
    if (now < unlockedAt) throw;

    // StandardToken will throw in the case of transaction fails
    token.transfer(teamMultisig, getTokenBalance());

    Unlocked();
  }

  // disallow ETH payment for this vault
  function () { throw; }

}
