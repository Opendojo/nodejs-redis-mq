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
    test 'id of several message should be consecutive', () ->
      message1 = new Message()
      message1Id = message1.getId()
      message2 = new Message()
      message2Id = message2.getId()
      expect(message2Id).to.be.above(message1Id)