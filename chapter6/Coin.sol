pragma solidity 0.8.15;
interface ERC20Interface {
function totalSupply() external view returns (uint);
function balanceOf(address tokenOwner) external view returns (uint balance);
function allowance(address tokenOwner, address spender) external view returns (uint remaining);
function transfer(address to, uint tokens) external returns (bool success);
function approve(address spender, uint tokens) external returns (bool success);
function transferFrom(address from, address to, uint tokens) external returns (bool success);
event Transfer(address indexed from, address indexed to, uint tokens);
event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}
contract Coin is ERC20Interface {
string public tokenSymbol;
string public tokenName;
uint8 public tokenDecimals;
uint public _totalSupplyOfToken;
mapping(address => uint) tokenBalances;
mapping(address => mapping(address => uint)) allowed;
//this is where we initialize our token with total supply , name etc
constructor() public {
tokenSymbol = "ISH";
tokenName = "Isha Jain Coin";
tokenDecimals = 2;
_totalSupplyOfToken = 500000;
tokenBalances[msg.sender] = _totalSupplyOfToken;
emit Transfer(address(0), msg.sender, _total
SupplyOfToken);
}
// function to return the supply at any point in time.
function totalSupply() public override view returns (uint) {
return _totalSupplyOfToken - tokenBalances
[address(0)];
}
//function to check balance of tokens at a specific address
function balanceOf(address tokenOwner) public override view returns (uint balance) {
return tokenBalances[tokenOwner];
}
// function for transferring tokens to a specific address.
function transfer(address to, uint tokens) public override returns (bool success) {
//checks if there is enough balance in the sender address
require(tokens <= tokenBalances[msg.sender]);
//deduct tokens from the sender
tokenBalances[msg.sender] = tokenBalances[msg.sender]-tokens;
// add tokens to the recipient address
tokenBalances[to] = tokenBalances[to] + tokens;
// once transfer is done emit a message
emit Transfer(msg.sender, to, tokens);
return true;
}
function approve(address spender, uint tokens) public override returns (bool success) {
allowed[msg.sender][spender] = tokens;
emit Approval(msg.sender, spender, tokens);
return true;
}
// this is same as approve but here we can specify from address which can be different from //message sender
function transferFrom(address from, address to, uint tokens) public override returns (bool success) {
require(tokens <= tokenBalances[from]);
tokenBalances[from] = tokenBalances[from]-tokens;
require(tokens <= allowed[from][msg.sender]);
allowed[from][msg.sender] = allowed[from][msg.sender]-tokens;
uint c=0;
c = tokenBalances[to] + tokens;
require(c >=tokenBalances[to] );
emit Transfer(from, to, tokens);
return true;
}
// checks if tokenOwner is allowed to make the transfer
function allowance(address tokenOwner, address spender) public override view returns (uint remaining) {
return allowed[tokenOwner][spender];
}
fallback() external payable {
revert();
}
}