async function main() {
const Coin = await ethers.getContractFactory("Coin");
const coin = await Coin.deploy();
await coin.deployed();
console.log("Coin deployed to:", coin.address);
}
main()
.then(() => process.exit(0))
.catch((error) => {
console.error(error);
process.exit(1);
});