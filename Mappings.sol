pragma solidity ^0.8.0;

contract Mappings{
    
    // state variable
    mapping( address => string  ) public users;
    
    function signUp(string memory _name) public{
        
        users[msg.sender] = _name;
        
    }
    
    function getMyName() public view returns(string memory){
        
        return users[msg.sender];
        
    }
    
    function getUserName(address _user) public view returns(string memory){
        
        return users[_user];
        
    }
    
}
