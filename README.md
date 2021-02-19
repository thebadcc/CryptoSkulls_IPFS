![logo](images/cryptoskulls_banner.png?raw=true)
# CryptoSkulls IPFS API v0.01
This repository contains an updated CryptoSkulls NFT API, where the respective images and videos may be found on the Inter-Planetary File System ("IPFS"). IPFS is a protocol and peer-to-peer network developed by Juan Benet and Protocol Labs for storing and sharing data in a distributed file system. Eventually, we'd like to recreate this API within a distributed data feed (likely API3 or The Graph) to continue preserving the CryptoSkulls NFTs' data and availability for collectors.

[Read more on Medium.](https://medium.com/thebadcc/cryptoskulls-ipfs-api-4b4ab4f8fd6e)

Contract Address: [0xc1Caf0C19A8AC28c41Fe59bA6c754e4b9bd54dE9](https://etherscan.io/address/0xc1Caf0C19A8AC28c41Fe59bA6c754e4b9bd54dE9)

IPFS API: https://raw.githubusercontent.com/thebadcc/CryptoSkulls_IPFS/main/API/token

Image Hash File: https://ipfs.io/ipfs/QmXVHusfnw2vK3VMQinasuQXpcwUHEBauDwnWGrCoJ6dgy
  
# JQuery
```
var root = 'https://raw.githubusercontent.com/thebadcc/CryptoSkulls_IPFS/main/API/0';
$.ajax({
  url: root,
  method: 'GET',
  dataType: "json",
}).then(function(data) {
  console.log(data);
});
```

# JavaScript
```
fetch('https://raw.githubusercontent.com/thebadcc/CryptoSkulls_IPFS/main/API/19')
 .then(response => {
   if (response.ok) {
     response.json().then(data => {
       result = JSON.stringify(data);
       console.log(result);
     });
    } else ;
 })
```


