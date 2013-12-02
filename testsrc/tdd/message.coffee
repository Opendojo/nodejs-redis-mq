expect = require('expect.js')
Message = require('../../lib/model/message')

suite 'Message', ()->
  suite 'constructor', ()->
    test 'message should have an id', ()->
      message = new Message()
      expect(message.getId).to.not.throwException()
      messageId = message.getId()
      expect(messageId).to.be.a('number').and.be(parseInt(message.getId()))
      expect(messageId).to.eql(parseInt(message.getId()))
    test 'id of several message should be consecutive', () ->
      message1 = new Message()
      message1Id = message1.getId()
      message2 = new Message()
      message2Id = message2.getId()
      expect(message2Id).to.be.above(message1Id)
    test 'message should have a type', () ->
      message = new Message()
      messageType = message.getType()
      expect(messageType).to.be.a('string')
    test 'message of type event should exists', () ->
      message = new Message()
      message.setType('event')
      messageType = message.getType()
      expect(messageType).to.eql('event')
    test 'message should have a setable command section', () ->
      message = new Message()
      messageCmd = message.getCommand()
      expect(messageCmd).to.be.a('string')
      message.setCommand('command-test')
      messageCmd = message.getCommand()
      expect(messageCmd).to.eql('command-test')
    test 'message should have a setable document section', () ->
      message = new Message()
      messageDocument = message.getDocument()
      expect(messageDocument).to.be.an('object')
      object = 
        filepath: '/test/path'
        filename: 'somefile.xml'
      message.setDocument(object)
      messageDocument = message.getDocument()
      expect(messageDocument).to.eql(object)
    test 'message document MUST be an object', () ->
      tmpFct = ()->
        message = new Message()
        message.setDocument('string')
      expect(tmpFct).to.throwError('/message document must be an object/')
    test 'message should have a timestamp', () ->
      message = new Message()
      messageTimestamp = message.getTimestamp()
      expect(messageTimestamp instanceof Date).to.be(true)

