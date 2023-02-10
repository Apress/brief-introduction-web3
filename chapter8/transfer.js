async function main() {
const MyContract = await ethers.getContractFactory("Coin");
const contract = await MyContract.attach(
"0xc136c20061344B0D6096adB6edd651aaCEFE0D7e" // The deployed contract address
);
// Now you can call functions of the contract
console.log(await contract.transfer("0x1A703B299d764B4e28Dc2C7849CFeDF9979D2430",200));
}
main()
.then(() => process.exit(0))
.catch((error) => {
console.error(error);
process.exit(1);
});