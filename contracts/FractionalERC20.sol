/**
 * This smart contract code is Copyright 2018 CHATTER TECH 
 *
 * Licensed under the Apache License, version 2.0: https://github.com/chattertechno/ICO/blob/master/LICENSE.txt
 */

pragma solidity ^0.4.8;

import "zeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * A token that defines fractional units as decimals.
 */
contract FractionalERC20 is ERC20 {

  uint public decimals;

}
