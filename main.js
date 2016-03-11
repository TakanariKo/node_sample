var request_test = require('./mod_sample.js');
request_test.simpleRequest("http://www.yahoo.co.jp", function(error, status, body){
    console.log("Status:" + status);
});

