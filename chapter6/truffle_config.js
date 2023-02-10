require('dotenv').config();
const HDWalletProvider = require('@truffle/hdwallet-provider');
// this provides an indirection to load the Infura URL and Mnemonic from the .env file
const { INFURA_API_URL, MNEMONIC } = process.env;
ropsten: {
provider: () => new HDWalletProvider(MNEMONIC, INFURA_API_URL),
network_id: 3,
gas: 5500000,
timeoutBlocks: 200,
skipDryRun: true
},