
cluster = require 'cluster'
numCPUs = require('os').cpus().length

if cluster.isMaster

  cluster.fork() for i in [0...numCPUs]

  cluster.on 'death', (worker) -> console.log 'worker ' + worker.pid + ' died'

else

  fairy = require('fairy').connect()
  {exec, spawn} = require 'child_process'

  fairy.queue('DOCAS').regist (repo, callback) ->
    coffee = spawn "docas", [repo]
    stdout = ''
    stderr = ''
    coffee.stdout.on 'data', (data) ->
      console.log 'data:', data = data.toString()
      stdout += data
    coffee.stderr.on 'data', (data) -> 
      console.log 'err:', data = data.toString()
      stderr+= data
    coffee.on 'exit', (code) ->
      console.log 'exit'
      if code is 0
        callback()
      else
        callback
          do: 'block-after-retry'
          message: "STDOUT: #{stdout}\n\nSTDERR: #{stderr}"
