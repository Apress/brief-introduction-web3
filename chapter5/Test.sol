pragma solidity 0.8.5;
contract Test{
// state variable for holding the message
string private message;
// Initialize the message to Hello!!.
constructor() public {
message = "Welcome";
}
/** @dev Function to set a new message.
* @param newMessage The new message.
*/
function setMessage(string memory newMessage) public {
message = newMessage;
}
/** @dev Function to return the message.
* @return The message string.
*/
function getMessage() public view returns (string memory) {
return message;
}
}