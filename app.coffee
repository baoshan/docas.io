#    Express app for GitHub hook and docas.io website.

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

  # ## Module dependencies.

  express = require 'express'
  {index, hook} = require './routes'
  http = require 'http'
  fairy = require('fairy').connect()
  app = express()

  # ## Configuration
 
  app.configure ->
    app.set 'port', process.env.PORT or 3000
    app.set 'views', __dirname + '/views'
    app.set 'view engine', 'jade'
    app.use express.favicon()
    app.use express.bodyParser()
    app.use express.methodOverride()
    app.use app.router
    app.use express.static __dirname + '/public'
    app.use require('fairy/web').connect().middleware

  app.configure 'development', ->
    app.use express.errorHandler()
 
  # ## Routes

  # ### Home Page
  app.get '/', index
 
  # ### GitHub Hook
  app.post '/', hook

  http.createServer(app).listen app.get('port'), ->
    console.log "Express server listening on port " + app.get('port')
