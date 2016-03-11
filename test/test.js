var assert = require('assert');
var request_test = require('../mod_sample.js');

describe('mod_sample', function() {
    describe('#test()', function() {
        it('should return true', function() {
            assert.equal(true, request_test.test());
        });
    });

    describe('#simpleRequest()', function() {
        it('request should return 200', function() {
            request_test.simpleRequest("http://www.yahoo.co.jp", function(error, response, body) {
                assert.equal(200, response.statusCode);
                done();
            });
        });
    });
});
