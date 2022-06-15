const hre = require("hardhat");

async function main() {
  // We get the contract to deploy
  const AhjinCoin = await hre.ethers.getContractFactory("AhjinCoin");
  const ahjinCoin = await AhjinCoin.deploy();

  await ahjinCoin.deployed();

  console.log("ahjinCoin deployed to:", ahjinCoin.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
