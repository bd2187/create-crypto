pragma solidity ^0.4.0;

contract MyToken {
  // Create array with all balances
  // 'mapping' = associate array where you associate addresses with balances
  // 'public' keyword means variable will be accessible by anyone in the blockchain
  // all balances will be public
  mapping (address => uint256) public balanceOf;

  // Create a few tokens on startup
  function MyToken() {
    balanceOf[msg.sender] = 21000000;
  }
}
