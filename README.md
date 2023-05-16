# zk-primitives

Rudimentary examples on how to use various ZK code

## Test Solidity Poseidon

This is to test gas usage of a Poseidon function in Solidity. Uses _some_ Poseidon library from https://github.com/iden3/circomlibjs/ .

1. Run `node createPoseidon.js` to generate bytecode
1. Run anvil: `anvil`
1. Insert the bytecode in script in _script/testPoseidon.sh_
1. Run it: `./script/testPoseidon.sh`

With that Poseidon implementation, a single hash creation is about 50k gas.

## Test Solidity Pedersen

This is to test gas usage of a Pedersen implementation in Solidity. Uses _some_ Pedersen library from https://github.com/Kelvyne/starknet-storage-proof-solidity .

1. Run `npm i`
1. Run `npx hardhat test`
