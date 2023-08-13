// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

//ERC721 introduces a standard for NFT where every token is unique and can have different value than another token from the same smart contract.
//Openzepplin helps you easily deploy your smart contracts
//Counter increments every time a NFT is created
//Ownable makes the account which made the smart contract the owner of smart contract
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

//This function is ERC721 as well as ownable
contract ProfileImageNfts is ERC721, Ownable {
    //Counters are used as every NFT is created. An option to exchange between unit256 and counters is seen.
    using Counters for Counters.Counter;
    using Strings for uint256;

    //Set the token ID to whatever the counter object is
    Counters.Counter _tokenIds;

    //We are declaring our data structure _tokenURIS as a string
    mapping(uint256 => string) _tokenURIs;

    //We are making a struct to store our data-schema which consists of three keys
    struct RenderToken{
        uint256 id;
        string uri;
        string space;
    }

    //When the contract is deployed, name the contract as ProfileImageNfts with a symbol as PIN
    constructor() ERC721("ProfileImageNfts","PIN"){}

    //This function basically adds a new token_id into the mapping as the token is being ran
    function _setTokenURI(uint256 tokenId, string memory _tokenURI) internal {
        _tokenURIs[tokenId] = _tokenURI;
    }

    //Checks if a specific tokenID exists. If it does, the it returns the URI
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId),"URI not exist on that ID");
        string memory _RUri =  _tokenURIs[tokenId];
        return _RUri;
    }

    //Our data schema is taken as our argument.  Our counter object has a method called current which gives us the current/last NFT which was minted.
    //res gets us the render token for a token called latestID. We check thorugh the all the tokenIDs and we return the data schema/RenderToken for each token present.
    function getAlltoken() public view returns (RenderToken[] memory){
        uint256 latestId = _tokenIds.current();
        RenderToken[] memory res = new RenderToken[](latestId);
        for(uint256 i = 0; i  <= latestId ; i++){
            if(_exists(i)){
                string memory uri = tokenURI(i);
                res[i] = RenderToken(i,uri," ");
            }
        }
        return res;
    }

    //We are taking the addresses of the recipents as our argument. newID holds the address of the current token created and is incremented as a new NFT is created.
    //With the help of this function, we call other functions such as mint and setTokenURI for every token to be minted.
    function mint(address recipents, string memory _uri) public returns (uint256){
        uint256 newId = _tokenIds.current();
        _mint(recipents,newId);
        _setTokenURI(newId,_uri);
        _tokenIds.increment();
        return newId;
    }
}
