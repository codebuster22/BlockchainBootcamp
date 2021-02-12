/////---------------------------------------------Start Of Interface.sol File ----------------------------------////////
pragma solidity ^0.8.0;

contract Interface{
    
    uint someNumber;
    
    function setSomeNumber(uint _num) public{
        someNumber = _num;
    }
    
    function getSomeNumber() public view returns(uint){
        return someNumber;
    }
    
}




/////---------------------------------------------End Of Interface.sol File ----------------------------------////////

/////---------------------------------------------Start Of Caller.sol File ----------------------------------////////
pragma solidity ^0.8.0;

interface Interface{
    function getSomeNumber() external view returns(uint);
    function setSomeNumber(uint _num) external;
}

contract Caller{
    
    
    uint public num;
    
    Interface i;
    
    function getNumber(address _adrs) public{
        i = Interface(_adrs);
        num = i.getSomeNumber();
    }
    
    function setNumber(address _adrs, uint _num) public{
        i.setSomeNumber(_num);
    }
}

/////---------------------------------------------End Of Caller.sol File ----------------------------------////////
