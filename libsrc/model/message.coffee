class Message
  @id=0

  constructor:()->
    # get next available id
    @internalId = Message.id++
  
  getId:()->
    @internalId

module.exports = Message