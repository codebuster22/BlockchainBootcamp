// Defining Version
pragma solidity ^0.8.0;

// Can be considered as class
contract FirstContract{
    
    // State
    
    // Boolean Data Type || true || false
    bool public flag = true;
    
    // Signed Integer - int8 to int256 in steps of 8 bytes
    int8 public integer8 = type(int8).min;
    
    // int256 equivalent to int
    int public integer = type(int).max;
    int256 public integer256 = type(int).max;
    
    // Unsigned Integers - uint8 to uint256 in steps of 8 bytes
    uint public uinteger = type(uint).max;
    
    
    
    // Functions
    // function funcName(arguments) accessModifiers {
    // }
    
    // Functions with no wrapping check
    function sub(uint i) public {
        unchecked { uinteger = uinteger - i; }
    }
    
    function add(uint i) public {
        unchecked { uinteger = uinteger + i; }
    }
    
    // Functions with Wrapping Check
    function subc(uint i) public {
        uinteger = uinteger - i;
    }
    
    function addc(uint i) public {
        uinteger = uinteger + i;
    }
    
    function toggle() public{
        flag=!flag;
    }
    
}
