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


http PUT https://api.github.com/repos/lee-dohm/test-repo/contents/hello.txt \
  "Authorization: token REDACTED-TOKEN" \
  message="my commit message" \
  committer:="{ \"name\": \"Lee Dohm\", \"email\": \"1038121+lee-dohm@users.noreply.github.com\" }" \
  content="bXkgbmV3IGZpbGUgY29udGVudHM="
