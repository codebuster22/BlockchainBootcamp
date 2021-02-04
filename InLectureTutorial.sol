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
    
    
    
    //  Address and Address payable
    // address
    address public sender;
    
    // address payable;
    address payable public sender1;
    
    // function to describe working of address data type
    function setSenderAddress() public returns(uint) {
        sender = msg.sender;
    }
    
    function getSenderBalance() public view returns(uint){
        return (sender.balance);
    }
    
    // function to describe working of address payable data type
    function setSenderPayable() public returns(uint){
        sender1 = payable(msg.sender);
    }
    
    function getSenderPBalance() public view returns(uint){
        return (sender1.balance);
    }
    
    uint[] public array;
    
    function addElement(uint e) public {
        array.push(e);
    }
    
    function RemoveElement() public {
        array.pop();
    }
    
    function getArray() public view returns(uint[] memory){
        return array;
    }
    
    // enum
    enum Mood {Happy, Sad, Angry}
    Mood public status;
    
    function setMoodToHappy() public{
        status = Mood.Happy;
    }
    
    function setMoodToSad() public{
        status = Mood.Sad;
    }
    
    function setMoodToAngry() public{
        status = Mood.Angry;
    }
    
}
