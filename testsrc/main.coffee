requirejs = require('requirejs')
requirejs.config(
  baseUrl: __dirname
  nodeRequire: require
)

requirejs ['expect.js'],(expect)->
  console.log "test"
  describe "Main test", () ->
    describe "Messages", () ->
      it "should have an id", () ->
        message = new Message()
        expect(message.id).to.not.throwException()
        expect(message.id).to.be.a('number')
        expect(message.id).to.eql(parseInt(message.id))
