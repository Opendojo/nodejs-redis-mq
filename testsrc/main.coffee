expect = require('expect.js')
Message = require('../lib/model/message')

describe "Main test", () ->
  describe "Messages", () ->
    it "should have an id", () ->
      message = new Message()
      console.log message.getId()
      expect(message.id).to.not.throwException()
      expect(message.id).to.be.a('number')
      expect(message.id).to.eql(parseInt(message.id))