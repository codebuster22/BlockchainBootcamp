pragma solidity ^0.8.0;

contract Loops{
    
    uint public total;
    
    function sumW(uint _num) public{
        uint i;
        while(i<=_num){
            total+=i;
            i++;
        }
        
    }
    
    function sumF(uint _num) public{
        for(uint i; i<=_num; i++){
            total+=i;
        }
        
    }
    
}
