# CryptoSkulls IPFS API v0.01

You can access the new CryptoSkulls IPFS API at:

https://raw.githubusercontent.com/thebadcc/CryptoSkulls_IPFS/main/API/token
  
Image Hash File: https://ipfs.io/ipfs/QmXVHusfnw2vK3VMQinasuQXpcwUHEBauDwnWGrCoJ6dgy
  
# JQuery Call 

var root = 'https://raw.githubusercontent.com/thebadcc/CryptoSkulls_IPFS/main/API/0';
$.ajax({
  url: root,
  method: 'GET',
  dataType: "json",
}).then(function(data) {
  console.log(data);
});
Javascript Call Example:
fetch('https://raw.githubusercontent.com/thebadcc/CryptoSkulls_IPFS/main/API/19')
 .then(response => {
 if (response.ok) {
 response.json().then(data => {
 result = JSON.stringify(data);
 console.log(result)
 });
 } else ;
 })

Eventually, we'd like to recreate this API within  a distributed data feed (likely API3 as previously mentioned) to preserve the NFT's data and distributed storage.

[Read more on Medium.](www.medium.com)
