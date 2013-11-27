fs = require 'fs'

{print} = require 'sys'
{spawn} = require 'child_process'

build = (callback) ->
  coffeeSrc = spawn 'coffee', ['-b','-c', '-o', 'lib', 'libsrc']
  coffeeSrc.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  coffeeSrc.stdout.on 'data', (data) ->
    print data.toString()
  coffeeSrc.on 'exit', (code) ->
    callback?() if code is 0
  coffeeTest = spawn 'coffee', ['-b','-c', '-o', 'test', 'testsrc']
  coffeeTest.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  coffeeTest.stdout.on 'data', (data) ->
    print data.toString()
  coffeeTest.on 'exit', (code) ->
    callback?() if code is 0

clean = (callback)->
  CleaningTest = spawn 'find', ['test','-type','d','-depth','1','-exec','rm','-rf','{}','\;']
  CleaningTest.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  CleaningTest.stdout.on 'data', (data) ->
    process.stdout.write data.toString()
  CleaningTest.on 'exit', (code) ->
    callback?() if code is 0
  CleaningCode = spawn 'find', ['lib','-type','d','-depth','1','-exec','rm','-rf','{}','\;']
  CleaningCode.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  CleaningCode.stdout.on 'data', (data) ->
    process.stdout.write data.toString()
  CleaningCode.on 'exit', (code) ->
    callback?() if code is 0

task 'clean', 'Clean test', ->
  clean()

task 'build', 'Build lib/ from libsrc/ and test/ form testsrc/', ->
  clean()
  build()

task 'sbuild', 'Build lib/ from libsrc/ and test/ form testsrc/', ->
  clean()
  build()