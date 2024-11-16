// In order to create an ERC20 token, you need the following:

// - The Token’s Name
// - The Token’s Symbol
// - The Token’s Decimal Places
// - The Total Number of Tokens in Circulation

//Please set the below variables in your contract with relevant values

string public constant name;
string public constant symbol;
uint8 public constant decimals;

uint256 totalSupply_;

constructor (uint256 total ) public {
  totalSupply_ = total;
  balances[msg.sender] = totalSupply_;
}



