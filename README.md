[](https://github.com/thebadcc/CryptoSkulls_IPFS/blob/main/images/cryptoskulls_banner.png)
# CryptoSkulls IPFS API v0.01
This repository contains an updated CryptoSkulls NFT API, where the respective images and videos may be found on the Inter-Planetary File System ("IPFS"). IPFS is a protocol and peer-to-peer network developed by Juan Benet and Protocol Labs for storing and sharing data in a distributed file system. Eventually, we'd like to recreate this API within a distributed data feed (likely API3) to preserve the CryptoSkulls NFTs' data and will also consider alternative file storage systems (Swarm, Storj, File Coin, Sia, etc.) as those projects evolve.

[Read more on Medium.](www.medium.com)

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
fetch('https://raw.githubusercontent.com/thebadcc/CryptoSkulls_IPFS/main/API/0')
 .then(response => {
 if (response.ok) {
 response.json().then(data => {
 result = JSON.stringify(data);
 console.log(result)
 });
 } else ;
 })
```


