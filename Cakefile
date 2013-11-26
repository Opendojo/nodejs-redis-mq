fs = require 'fs'

{print} = require 'sys'
{spawn} = require 'child_process'

build = (callback) ->
  coffeeSrc = spawn 'coffee', ['-b','-c', '-o', 'lib', 'src']
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

task 'build', 'Build lib/ from src/', ->
  build()

task 'sbuild', 'Build lib/ from src/', ->
  build()