pragma solidity ^0.8.0;

// Global Object - msg
// Properties:-
//  1) msg.sender - address of account which initiated txn
//  2) msg.value - amount of ether sent in trx.
//  3) now - current timestamp

// Address :-
// If wants to send some ether to this account - needs to be payable
// properties:-
//  1) .balance - balance of Address
//  if defined as payable
//  2) .transfer(amountInWei) - function to send wei


contract Address {
    
    // state variable
    address public sender;
    
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    uint public value;
    
    function setSender() public{
        
        sender = msg.sender;
        
    }
    
    function receiveF() public payable{
        value = msg.value;
    }
    
    function getBalance() public view returns(uint){
        
        return address(this).balance;
        
    }
    
    function withdraw(address payable _receiver, uint _amount) public {
        require(msg.sender == owner, "OOOOOPS!! You are not the owner!");
        _receiver.transfer(_amount);
    }
    
    
    
}
