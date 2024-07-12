const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const storageModule = buildModule("StorageModule", (m) => {
  const storage = m.contract("Storage");

  return { storage };
});

module.exports = storageModule;