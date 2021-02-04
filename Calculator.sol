pragma solidity ^0.8.1;

contract Calculator{
    
    // State Variables
    int public result = 0;
    uint public expRes = 0;
    
    // Addition
    function add(int a, int b) public{
        result = a + b;
    }
    
    // Subtraction
    function sub(int a, int b) public{
        result = a - b;
    }
    
    // Multiplication
    function mul(int a, int b) public{
        result = a * b;
    }
    
    // Division
    function div(int a, int b) public  {
        result = (a * 100) / b;
    }
    
    function getDivResult() public view returns(int res, int8 dec){
        return( result, -2);
    }
    
    // Exponent
    function exp(uint a, uint8 power) public {
        expRes = a**power;
    }
    
    // // 
    // function divF(fixed a, fixed b) public{
    //     fResult = a / b;
    // }
}
