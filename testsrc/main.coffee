expect = require('expect.js')
Message = require('../lib/model/message')

describe "Main test", () ->
  describe "Messages", () ->
    it "should have an id", () ->
      message = new Message()
      expect(message.id).to.be.a('number')
      expect(message.id).to.eql(parseInt(message.id))
      expect(message.getId).to.not.throwException()
