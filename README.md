# zk-primitives

Example code and some performance measurements for a few Zero Knowledge primitives in Solidity.

## Test Solidity Poseidon

This is to test gas usage of a Poseidon hash function in Solidity. Uses _some_ Poseidon library from https://github.com/iden3/circomlibjs/ .

1. Run `node createPoseidon.js` to generate bytecode
1. Run anvil: `anvil`
1. Insert the bytecode in script in _script/testPoseidon.sh_
1. Run it: `./script/testPoseidon.sh`

With that Poseidon implementation, a single hash creation is about 50k gas.

## Test Solidity Pedersen

This is to test gas usage of a Pedersen implementation in Solidity. Uses _some_ Pedersen library from https://github.com/Kelvyne/starknet-storage-proof-solidity .

1. Run `npm i`
1. Run `npx hardhat test`

With that Pedersen implementation, a single hash creation is about 670k gas.

## Solidity proof verifier for Marlin

A verifier generator is available at https://github.com/Zokrates/ZoKrates/blob/633ee82547748d601c68eb2c7fefe4a051af8f1b/zokrates_js/tests/tests.js#L225 . They also have a Remix plugin available for quick testing.

Verifying a trivial circuit in Solidity Marlin verifier costs about 700k gas.
