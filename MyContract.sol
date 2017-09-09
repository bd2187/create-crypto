pragma solidity ^0.4.0;

contract MyToken {
  // Create array with all balances
  // 'mapping' = associate array where you associate addresses with balances
  // 'public' keyword means variable will be accessible by anyone in the blockchain
  // all balances will be public

  mapping (address => uint256) public balanceOf;

  // Create a few tokens on startup
  // Startup function that runs once the contract is uploaded to the network
  // This sets the balance of msg.sender, the user who deployed the contract

  function MyToken(uint256 initialSupply) {
    balanceOf[msg.sender] = initialSupply;
  }
}
