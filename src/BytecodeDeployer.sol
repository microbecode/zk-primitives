pragma solidity ^0.8.2;

contract BytecodeDeployer {
    function deployFromBytecode(
        bytes memory bytecode
    ) public returns (address) {
        address child;
        assembly {
            mstore(0x0, bytecode)
            child := create(0, 0xa0, calldatasize())
        }
        return child;
    }

    event ContractDeployed(address deployedAddress);
}
