pragma solidity ^0.8.0;

contract Strings{
    
    // state variable
    // Stored directly in  - storage
    
    // Very Expensive
    // Strings cannot be compared
    
    
    string public name;
    
    function setName( string memory _name ) public{
        
        name = _name;
        
    }
    
}
