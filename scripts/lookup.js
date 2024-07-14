const hre = require("hardhat");

const addr = "0x884ebFe63Aa288f56eD0991eff81472F35BD0Ded";

async function lookup() {
    try {
        // Get the Sepolia network from the Hardhat config
        const sepolia = hre.config.networks.sepolia;

        // Create a provider for the Sepolia network
        const provider = new hre.ethers.JsonRpcProvider(sepolia.url);

        // Use the provider to get the storage
        const value = await provider.getStorage(addr, "0x1");

        console.log(parseInt(value));
    } catch (error) {
        console.error("An error occurred:", error);
    }
}

lookup();