# CryptoSkulls IPFS API v0.01


[See Medium.](www.medium.com)

Image Hash File: https://ipfs.io/ipfs/QmXVHusfnw2vK3VMQinasuQXpcwUHEBauDwnWGrCoJ6dgy

API URL: https://raw.githubusercontent.com/thebadcc/CryptoSkulls_IPFS/main/API/token

Calling API via JQuery

var root = 'http://jsonplaceholder.typicode.com';

$.ajax({
  url: root + '/users',
  method: 'GET'
}).then(function(data) {
  console.log(data);
});


curl -X PUT -H "Authorization: token x" -d "{ \""message\"": \""token\"", \""content\"": \""<api>\""  }" https://api.github.com/repos/thebadcc/CryptoSkulls_IPFS/contents/API/<id>
