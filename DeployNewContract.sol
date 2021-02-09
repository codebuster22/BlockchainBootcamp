pragma solidity ^0.8.0;

contract Contract1{
    
    event Created1(address, address);
    event Interact(address);
    
    constructor () {
        emit Created1(msg.sender, tx.origin);
    }
    
    function interact() public{
        emit Interact(msg.sender);
    }
    
}

contract deployer{
    
    mapping(uint => address) public mapDeployed;
    uint public counter;
    
    function deployContract() public {
        Contract1 cont = new Contract1();
        
        mapDeployed[counter] = address(cont);
        counter++;
    }
    
}
