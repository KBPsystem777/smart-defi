// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// pragma solidity >=0.4.21 <0.7.0;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract MyToken is ERC20 {
  constructor() public ERC20("My token", "MTKN") {
    _mint(msg.sender, 1000000000000000000000000);
}
  }

contract Migrations {
  address public owner = msg.sender;
  uint public last_completed_migration;

  modifier restricted() {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner"
    );
    _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
