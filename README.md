# CryptoSkulls IPFS API v0.01

More information to come. 

[See Medium.](www.medium.com)


// from
// http://jsonplaceholder.typicode.com/

var root = 'http://jsonplaceholder.typicode.com';

$.ajax({
  url: root + '/users',
  method: 'GET'
}).then(function(data) {
  console.log(data);
});


curl -X PUT -H "Authorization: token x" -d "{ \""message\"": \""token\"", \""content\"": \""<api>\""  }" https://api.github.com/repos/thebadcc/CryptoSkulls_IPFS/contents/API/<id>
