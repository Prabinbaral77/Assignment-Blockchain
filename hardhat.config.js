require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.4",
  networks: {
    ropsten: {
      url: `https://eth-ropsten.alchemyapi.io/v2/${process.env.ALCHEMY_PRIVATE_KEY}`,
      accounts: [`${process.env.ROPSTEN_PRIVATE_KEY}`],
    },
  },
};
