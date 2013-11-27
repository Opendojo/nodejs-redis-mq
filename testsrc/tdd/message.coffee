expect = require('expect.js')
Message = require('../../lib/model/message')

suite 'Message', ()->
  suite 'constructor', ()->
    test 'message should have an id', ()->
      message = new Message()
      expect(message.getId).to.not.throwException()
      messageId = message.getId()
      expect(messageId).to.be.a('number')
      expect(messageId).to.eql(parseInt(message.getId()))