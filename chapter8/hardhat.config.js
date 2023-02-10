/** @type import('hardhat/config').HardhatUserConfig */
require("@nomiclabs/hardhat-ethers")
require("@nomiclabs/hardhat-waffle")
module.exports = {
solidity: "0.8.9",
networks: {
ropsten: {
url: "https://ropsten.infura.io/v3/<<your infura project id>>",
accounts: {
mnemonic: "<<your mnemonic>>",
path: "m/44'/60'/0'/0",
initialIndex: 0,
count: 20,
passphrase: "",
},
},
},
};