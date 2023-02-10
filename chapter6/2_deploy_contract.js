const Coin_Contract = artifacts.require("Coin");
module.exports = function(deployer) {
deployer.deploy(Coin_Contract);
};