expect = require('expect.js')
Message = require('../../lib/model/message')

suite 'Message', ()->
  suite 'constructor', ()->
    test 'message should have an id', ()->
      message = new Message()
      expect(message.getId).to.not.throwException()
      expect(message.id).to.be.a('number')
      expect(message.id).to.eql(parseInt(message.id))