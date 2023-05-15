pragma solidity ^0.5.0;

contract LiveFactory {
    function deployCode(
        bytes memory _code
    ) public returns (address deployedAddress) {
        assembly {
            deployedAddress := create(0, add(_code, 0x20), mload(_code))
            //jumpi(invalidJumpLabel, iszero(extcodesize(deployedAddress))) // jumps if no code at addresses
        }
        emit ContractDeployed(deployedAddress);
    }

    event ContractDeployed(address deployedAddress);
}
