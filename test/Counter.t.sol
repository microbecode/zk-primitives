// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/BytecodeDeployer.sol";

contract CounterTest is Test {
    BytecodeDeployer deployer;
    address poseidonAddr;

    function setUp() public {
        BytecodeDeployer f = new BytecodeDeployer();
        deployer = f;

        // random bytecode. Replace with real poseidon bytecode
        bytes
            memory byteCode = "0x608060405234801561001057600080fd5b506101dd806100206000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c806331502b561461003b578063d46169671461006a575b600080fd5b61004e6100493660046100f6565b61007d565b6040516001600160a01b03909116815260200160405180910390f35b61004e6100783660046100f6565b610091565b600080826000523660a06000f09392505050565b60008151602083016000f06040516001600160a01b03821681529091507f8ffcdc15a283d706d38281f500270d8b5a656918f555de0913d7455e3e6bc1bf9060200160405180910390a1919050565b634e487b7160e01b600052604160045260246000fd5b60006020828403121561010857600080fd5b813567ffffffffffffffff8082111561012057600080fd5b818401915084601f83011261013457600080fd5b813581811115610146576101466100e0565b604051601f8201601f19908116603f0116810190838211818310171561016e5761016e6100e0565b8160405282815287602084870101111561018757600080fd5b82602086016020830137600092810160200192909252509594505050505056fea2646970667358221220f7d0caba643bba2c6e619a4a639f2e3f446ec8a28e5802042f5009a8b895ef6664736f6c63430008100033";

        poseidonAddr = deployer.deployFromBytecode(byteCode);
        console.log("addr %s", poseidonAddr);
    }

    // For some reason this test fails to deploy the bytecode (same problem in setup). So, test not doing anything useful.
    function testPoseidon() public {
        (bool success, bytes memory posHash) = poseidonAddr.call(
            abi.encodeWithSignature("poseidon(uint256[2])", [1, 2])
        );
        if (!success) {
            revert("Failure");
        }
        uint256 size;
        address aaa = poseidonAddr;
        assembly {
            size := extcodesize(aaa)
        }
        console.log("size %s at %s", size, poseidonAddr);

        //console.log(vm.toString(posHash));
    }
}
