module.exports = {
    test: function() {
        return true;
    },
    simpleRequest: function(url, callback) {
        var req= require('request');
        req(url, function (error, response, body) {
            if (!error && response.statusCode == 200) {
                callback(error, response.statusCode, body);
            } else {
                callback(error, response.statusCode, body);
            }
        });
    }
}


