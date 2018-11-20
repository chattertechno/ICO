pragma solidity ^0.4.25;

interface SecurityTransferAgent {
  function verify(address from, address to, uint256 value) public returns (uint256 newValue);
}
