
cluster = require 'cluster'

numCPUs = require('os').cpus().length

if cluster.isMaster

  for i in [0...numCPUs]
    cluster.fork()

  cluster.on 'death', (worker) ->
    console.log 'worker ' + worker.pid + ' died'

else

  # ## Module dependencies.

  express = require 'express'
  routes = require './routes'
  fairy = require('fairy').connect()
  app = express.createServer()

  # ## Configuration
 
  app.configure ->
    app.set 'views', __dirname + '/views'
    app.set 'view engine', 'jade'
    app.use express.bodyParser()
    app.use express.methodOverride()
    app.use app.router
    app.use express.static __dirname + '/public'
    app.use require('fairy/web')()

  app.configure 'development', ->
    app.use express.errorHandler
      dumpExceptions: true
      showStack: true
 
  app.configure 'production', ->
    app.use express.errorHandler()
 
  # ## Routes

  # ### Home Page
  app.get '/', routes.index
 
  # ### GitHub Hook
  app.post '/', routes.hook

  app.listen 3000
