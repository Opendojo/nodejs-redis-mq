class Message
  @id=0

  constructor:()->
    # get next available id
    @internalId = Message.id++
    @type = ''
    @command = ''
    @document = {}
    @timestamp = new Date()
  
  getId:()->
    @internalId

  getType:()->
  	@type

  setType:(@type)->

  getCommand:()->
  	@command

  setCommand:(@command)->

  getDocument:()->
  	@document

  setDocument:(doc)->
  	if(typeof doc is 'object')
  		@document = doc
  	else
  		throw "message document must be an object"

  getTimestamp:()->
  	@timestamp


module.exports = Message