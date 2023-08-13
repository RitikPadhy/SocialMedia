require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.19",
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/EzJP1cnQg_PrupWgThwL_qZOH1emTtiE',
      accounts: [`3e772d75df53773443208ffb5a43eb56111bc8f54bfe25d5ae1a882f645e95a8`],
    },
  },
};
