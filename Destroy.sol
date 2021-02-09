// Creation
// Deployed in Block no. 100
// Deploying Contract onto network
// constructor called

// Runnung
// Interaction phase with smart contract

// Destruction
// Destroyed in block no. 120
// selfdestruct(address) => address - where you want to send pending balance of smart contract

pragma solidity ^0.8.0;

contract Destroy{
    
    address owner;
    
    event CreationPhase(address);
    event InteractionPhase(address);
    event DestructionPhase1(address);
    event DestructionPhase2(address);
    event Receive(address, uint);
    
    modifier OnlyOwner() {
        require(msg.sender==owner,"You are not the onwer.");
        _;
    }
    
    // Creation Phase
    constructor () {
        emit CreationPhase(owner);
        owner = msg.sender;
    }
    
    // Interaction Phase
    function Interact(uint _num) public returns(uint){
        emit InteractionPhase(owner);
        return _num;
    }
    
    // Destruction Phase
    function DestroySmartContract() public OnlyOwner {
        emit DestructionPhase1(owner);
        selfdestruct(payable(owner));
        emit DestructionPhase2(owner);
    }
    
    receive () payable external {
        emit Receive(msg.sender, msg.value);
    }
}

