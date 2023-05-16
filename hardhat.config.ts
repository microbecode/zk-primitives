import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: "0.8.18",
  paths: {
    sources: "./src",
  },
  gasReporter: {
    enabled: true,
  },
};

export default config;
