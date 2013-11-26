requirejs = require('requirejs')
requirejs.config(
  baseUrl: __dirname
  nodeRequire: require
)

requirejs(['expect.js','lib/model/message'],(expect,Message)->
  suite 'Message', ()->
    suite 'constructor', ()->
      test 'message should have an id', ()->
        message = new Message()
        expect(message.id).to.not.throwException()
        expect(message.id).to.be.a('number')
        expect(message.id).to.eql(parseInt(message.id))
)