#    Clustered docas workers restart on exit.

cluster = require 'cluster'

numCPUs = require('os').cpus().length

if cluster.isMaster

  for i in [0...numCPUs]
    cluster.fork()
    console.log 'worker started'

  cluster.on 'exit', (worker, code, signal) ->
    exitCode = worker.process.exitCode;
    console.log 'worker ' + worker.pid + ' died (' + exitCode + '). restarting...'
    cluster.fork()

else

  # ## Worker Configuration

  fairy = require('fairy').connect()
  {spawn} = require 'child_process'

  fairy.queue('DOCAS').regist (repo, callback) ->
    child_process = spawn "docas", [repo]
    output = ''

    child_process.stdout.on 'data', (data) ->
      process.stdout.write data
      output += data

    child_process.stderr.on 'data', (data) ->
      process.stderr.write data
      output += data

    child_process.on 'exit', (code) ->
      return callback() unless code
      callback
        do: 'retry'
        message: output
