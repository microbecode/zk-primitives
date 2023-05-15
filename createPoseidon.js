const poseidonSolidityGenerator = require("circomlibjs");

console.log("Created Poseidon bytecode:");
console.log(poseidonSolidityGenerator.poseidonContract.createCode(2));
