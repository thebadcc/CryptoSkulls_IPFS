pragma solidity 0.4.24;

contract CryptoSkulls {
    
    function supportsInterface(bytes4) public pure returns (bool) {}
    function name() public pure returns (string) {}
    function getApproved(uint) public pure returns (uint) {}
    function totalSupply() public pure returns (uint) {}
    function tokenOfOwnerByIndex(address, uint) public pure returns (uint) {}
    function tokenByIndex(uint) public pure returns (uint) {}
    function imageHash() public pure returns (string) {}
    function ownerOf(uint) public pure returns (address) {}
    function balanceOf(address) public pure returns (uint) {}
    function owner() public pure returns (address) {}
    function isOwner() public pure returns (bool) {}
    function symbol() public pure returns (string) {}
    function isApprovedForAll(address, address) public pure returns (bool) {}

}

contract CryptoSkullsAPI {
    modifier onlyAuthor {
        require(msg.sender == author);
        _;
    }
    
    CryptoSkulls pullContract;
    
    address public author;
    address public tokenAddress;
    string public imageHash;
    string public imageHashURI;
    string public tokenURI;
   
    constructor() public {
        author = msg.sender;
        tokenAddress = 0x9af756e7be065dca83674ec17f3703579a544da1;
        imageHashURI = 'https://ipfs.io/ipfs/QmXVHusfnw2vK3VMQinasuQXpcwUHEBauDwnWGrCoJ6dgy';
        tokenURI = 'https://ipfs.io/ipfs/QmbatfUPcfW7ws15uATv2buLvpPYFibDJQbsD7oMmUnXcC';
        pullContract = CryptoSkulls(tokenAddress);   
        emit _UpdateContract(tokenAddress, imageHashURI, tokenURI);
    }
          
    
    function killContract() public onlyAuthor { 
        selfdestruct(author); 
    }
    
    function transferOwnership(address _author) public onlyAuthor { 
        author = _author; 
        
        emit _transferOwnership(msg.sender, _author);
    }
    
    
    function updateContract(address _tokenAddress,  string _imageHashURI, string _tokenURI) public onlyAuthor { 
        tokenAddress = _tokenAddress;
        imageHashURI = _imageHashURI;
        tokenURI = _tokenURI;
        pullContract = CryptoSkulls(_tokenAddress);
        emit _UpdateContract(_tokenAddress, _imageHashURI, _tokenURI);
    }
    
      
    function supportsInterface(bytes4 interfaceId ) constant public returns (bool) {
        return pullContract.supportsInterface(interfaceId);
    }
    
    function name() constant public returns (string) {
        return pullContract.name();
    }
    
    function getApproved(uint tokenId) constant public returns (uint) {
        return pullContract.getApproved(tokenId);
    }
    
    function totalSupply() constant public returns (uint) {
        return pullContract.totalSupply();
    }
    
    function tokenOfOwnerByIndex(address owner, uint index) constant public returns (uint) {
        return pullContract.tokenOfOwnerByIndex(owner, index);
    }
    
    function tokenByIndex(uint _uint) constant public returns (uint) {
        return pullContract.getApproved(_uint);
    }
    
    function imageHash() constant public returns (string) {
        return pullContract.imageHash();
    }
    
    function ownerOf(uint _uint) constant public returns (address) {
        return pullContract.ownerOf(_uint);
    }
    
    function balanceOf(address _address) constant public returns (uint) {
        return pullContract.balanceOf(_address);
    }
    
    function owner(address _address) constant public returns (address) {
        return pullContract.owner();
    }
    
    function isOwner() constant public returns (bool) {
        return pullContract.isOwner();
    }
    
    function symbol() constant public returns (string) {
        return pullContract.symbol();
    }
    
    function isApprovedForAll(address _address, address _address2 ) constant public returns (bool) {
        return pullContract.isApprovedForAll(_address, _address2);
    }
    
    
event   _UpdateContract(address newTokenAddress, string newImageHashURI, string newTokenURI);
event   _transferOwnership(address oldAuthor, address newAuthor);
    
}
