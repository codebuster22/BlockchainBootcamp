// Create 2 Variables
// One for X-axis
// second for y-axis

// Create 4 Functions that increment
// Respective vaiable by 1
//     To Move in y-axis
//         Forward
//         Backward
//     To Move in X-axis
//         Right
//         Left

pragma solidity ^0.8.0;

contract RC{
    
    // State Variables
    
    // X-Axis
    int8 x = 0;
    
    // Y-Axis
    int8 y = 0;
    
    // Function Declaration
    
    // Functions for Y-Axis
    
    // Forward that is Increment Y by 1
    function forward() public{
        y++;
    }
    
    // Backward that is Decrement Y by 1
    function backward() public{
        y--;
    }
    
    // Functions for X-Axis
    
    // Right that is Increment x by 1
    function right() public{
        x++;
    }
    
    // Left that is Decrement x by 1
    function left() public{
        x--;
    }
    
    // Getter for Coordinates that is X and Y
    
    // Getter for X and Y
    function getCorrdinates() public
    view returns(int8 x_axis, int8 y_axis){
        return (x,y);
    }
}
