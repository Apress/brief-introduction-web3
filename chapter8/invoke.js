async function main() {
const MyContract = await ethers.getContractFactory("Coin");
const contract = await MyContract.attach(
"0xc136c20061344B0D6096adB6edd651aaCEFE0D7e" // The deployed contract address
);

console.log(await contract.balanceOf("0xb96aeD3A4e11bBB1C028Ac96420305c803880Cd3"));
}
main()
.then(() => process.exit(0))
.catch((error) => {
console.error(error);
process.exit(1);
});