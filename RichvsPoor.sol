pragma solidity ^0.8.0;

contract RichPoor{
    
    // State Variables
    enum Status { Rich, Poor }
    Status public SenderStatus;
    Status public tpStatus;
    
    address sender;
    
    address tp;
    
    function checkStatus(address test) public {
        tp = test;
        if( tp.balance == 100 ether ){
            tpStatus = Status.Rich;
        }else {
            tpStatus = Status.Poor;
        }
    }
    
    function setSender() public{
        
        sender = msg.sender;
        
    }
    
    function setStatus() public{
        
        if( sender.balance >= 99 ether ){
            SenderStatus = Status.Rich;
        }else {
            SenderStatus = Status.Poor;
        }
        
    }
    
}
