pragma solidity ^0.8.0;

contract Enums{
    
    enum Odd {Odd, Even}
    Odd public flag;
    
    function CheckIfOdd(uint a) public{
        if(a % 2 == 0){
            flag = Odd.Even;
        }else {
            flag = Odd.Odd;
        }
    }
    
}
