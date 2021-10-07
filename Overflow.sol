pragma solidity ^0.6.0;

//checks for overflow to increase the readibility of codes.

contract Overflow {
    
    function overflow() public view returns(uint8) {
        uint8 big = 255 + uint8(100);
        return big;
    }
}
