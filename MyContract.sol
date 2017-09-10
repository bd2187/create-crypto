pragma solidity ^0.4.0;

contract MyToken {
  // set up basic info about contract

  string public name;
  string public symbol;
  uint8 public decimals;

  // Create an associative array with all balances
  // 'mapping' = associate array where you associate addresses with balances
  // 'public' keyword means variable will be accessible by anyone in the blockchain
  // all balances will be public

  mapping (address => uint256) public balanceOf;

  // Create a few tokens on startup
  // Constructor function that runs once the contract is uploaded to the network
  // This sets the balance of msg.sender, the user who deployed the contract

  function MyToken (uint256 initialSupply, string tokenName, string tokenSymbol, uint8 decimalUnits) {
    balanceOf[msg.sender] = initialSupply; // give creator all initial tokens;
    name = tokenName;                      // set the name for display purposes
    symbol = tokenSymbol;                  // set the symbol for display purposes
    decimals = decimalUnits;               // amount of decimals for display purposes
  }

  // Send coins
  function transfer(address _to, uint256 _value) { // recipient and value
    // Check if sender has adequate balance and check for overflows
    require(balanceOf[msg.sender] >= _value && balanceOf[_to] + _value >= balanceOf[_to]);

    // Add and subtract new balances
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value
  }
}
