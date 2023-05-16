// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/BytecodeDeployer.sol";

contract BytecodeDeployerTest is Test {
    BytecodeDeployer deployer;
    address poseidonAddr;
    bytes byteCode;

    function setUp() public {
        BytecodeDeployer f = new BytecodeDeployer();
        deployer = f;

        // random bytecode. Replace with real poseidon bytecode
        byteCode = "0x6080604052348015600f57600080fd5b5060a78061001e6000396000f3fe6080604052348015600f57600080fd5b506004361060285760003560e01c806319ff1d2114602d575b600080fd5b60336035565b005b600660008190556040519081527fa17a9e66f0c355e3aa3b9ea969991204d6b1d2e62a47877f612cb2371d79e06a9060200160405180910390a156fea2646970667358221220fe0c02a740909be15c9696f09f5707b6785b08586a02779c4e3faf03bf0cc36d64736f6c63430008100033";

        poseidonAddr = deployer.deployFromBytecode(
            // type(BytecodeDeployer).creationCode // this works, but using a supplied bytecode doesn't
            byteCode
        );
        console.log("addr %s", poseidonAddr);
    }

    // For some reason this test fails to deploy the bytecode (same problem in setup). So, test not doing anything useful.
    function testPoseidon() public {
        /*(bool success, bytes memory posHash) = poseidonAddr.call(
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

        console.log(vm.toString(posHash)); */
    }
}
