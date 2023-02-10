//SDPX-License-Identifier: MIT
pragma solidity 0.8.0;
import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/0xcert/ethereum-erc721/src/contracts/ownership/ownable.sol";
contract MyNFT is NFTokenMetadata, Ownable {
constructor() {
//name of the NFT
nftName = "Shashank Jain NFT";
// nft symbol
nftSymbol = "LAPTOP";
}
// this function provides the mint functionality with _to variable will store the address of the
//receiver of the nft. tokenId stores the token identifier and the uri stores the referenced url to the
// actual file location. In our case we have stored the file in ipfs so the ipfs url will be used.
function mint(address _to, uint256 _tokenId, string calldata _uri) external onlyOwner {
super._mint(_to, _tokenId);
super._setTokenUri(_tokenId, _uri);
}
}