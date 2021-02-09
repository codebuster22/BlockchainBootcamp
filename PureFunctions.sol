pragma solidity ^0.8.0;

contract PureFunctions{
    
    // State Variable
    event SenderAddress(address _sender);
    
    // Pure function
    function sum(uint _num1, uint _num2) public pure returns(uint){
        
        return (_num1 + _num2);
        
    }
    
    function LogSender() public {
        emit SenderAddress(msg.sender);
    }
    
}
