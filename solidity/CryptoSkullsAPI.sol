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
        imageHashURI = '';
        tokenURI = '';
 
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
        
        emit _UpdateContract(_tokenAddress, _imageHashURI, _tokenURI);
    }
    
    
    function setPull(address _address) onlyAuthor {
        pullContract = CryptoSkulls(_address);           
    }    
          
      
    function owner() constant public returns (address) {
        return pullContract.owner();
    }
    
    function getApproved(uint _val) constant public returns (uint) {
        return pullContract.getApproved(_val);
    }
    
event   _UpdateContract(address, string, string);
event   _transferOwnership(address, address);
    
}
