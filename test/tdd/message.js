// Generated by CoffeeScript 1.6.3
var Message, expect;

expect = require('expect.js');

Message = require('../../lib/model/message');

suite('Message', function() {
  return suite('constructor', function() {
    return test('message should have an id', function() {
      var message;
      message = new Message();
      expect(message.getId).to.not.throwException();
      expect(message.id).to.be.a('number');
      return expect(message.id).to.eql(parseInt(message.id));
    });
  });
});
