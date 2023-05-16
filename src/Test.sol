pragma solidity ^0.8.2;

// Used to generate minimal bytecode for testing

contract Test {
    uint256 a;
    event A(uint256);

    function hello() public {
        a = 6;
        emit A(a);
    }
}
