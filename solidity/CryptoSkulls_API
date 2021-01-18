pragma solidity 0.4.24;

contract CryptoSkullsAPI {
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    address public owner;
    address public tokenAddress;
    string public name;
    string public symbol;
    string public imageHash;
    string public imageHashURI;
    string public tokenURI;
    uint public totalSupply;


    constructor() public {
        owner = msg.sender;
        tokenAddress = 0x9af756e7be065dca83674ec17f3703579a544da1;
        name = 'CryptoSkulls';
        symbol = 'CryptoSkulls';
        imageHash = 'ee45d31baca263402d1ed0a6f3262ced177420365fe10f3dcf069b32b105fef7';
        imageHashURI = '';
        tokenURI = '';
         emit _UpdateContract(tokenAddress, name, symbol, imageHash, tokenURI, totalSupply);
    }
    

    function killContract() public onlyOwner { 
        selfdestruct(owner); 
    }
    
    function transferOwnership(address _owner) public onlyOwner { 
        owner = _owner; 
        
        emit _transferOwnership(msg.sender, _owner);
    }
    
    
    function updateContract(address _tokenAddress, string _name, string _symbol, string _imageHash, string _imageHashURI, string _tokenURI, uint _totalSupply) public onlyOwner { 
        tokenAddress = _tokenAddress;
        name = _name;
        symbol = _symbol;
        imageHash = _imageHash;
        imageHashURI = _imageHashURI;
        tokenURI = _tokenURI;
        totalSupply = _totalSupply;
        
        emit _UpdateContract(_tokenAddress, _name, _symbol, _imageHash, _tokenURI, _totalSupply);
    }
    
event   _UpdateContract(address, string, string, string, string, uint);
event   _transferOwnership(address, address);
    
}
