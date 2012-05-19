
# ## Node.js Cluster on Multi Cores
cluster = require 'cluster'

if cluster.isMaster

  numCPUs = require('os').cpus().length
  cluster.fork() for i in [0...numCPUs]

  cluster.on 'death', (worker) ->
    console.info 'worker ' + worker.pid + ' died'
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
