pragma solidity ^0.8.0;

contract Functions{
    
    uint num;
    
    // Modify state & Read State
    function modifyState() public{
        num = noState(10,20);
    }
    
    // Read State 
    function readState() public view returns(uint){
        return num;
    }
    
    // No interaction with state
    function noState(uint _num, uint _num2) public pure returns(uint sum){
        return _num + _num2;
    }
    
    
}
