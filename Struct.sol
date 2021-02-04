pragma solidity ^0.8.0;

contract Struct{
    
    // state variable
    struct User{
        uint user_id;
        string username;
        address user_add;
    }
    mapping(uint => User) public users;
    uint public counter;
    
    
    // functions
    function signUp(string memory _name) public {
        counter++;
        User memory user = User(counter,_name,msg.sender);
        users[counter] = user;
    }
    
    function getUser(uint _index) public view returns(User memory){
        
        return users[_index];
        
    }
    
    function getUserName(uint _index) public view returns(string memory){
        
        return users[_index].username;
        
    }
    
    function updateName(uint _index, string memory _newName) public{
        
        users[_index].username = _newName;
        
    }
    
}
