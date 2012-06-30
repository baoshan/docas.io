#    Router method for index page and GitHub hook.

# ## Homepage
#
# Use **Express** to render the homepage.
exports.index = (req, res) ->
  res.render 'index', { title: 'Express' }

fs = require 'fs'
https = require 'https'

# **[Fairy]** queue named `DOCAS` is used to queue the documentation tasks.
#
# [Fairy]: https://github.com/baoshan/fairy
queue = require('fairy').connect().queue('DOCAS')
allowed_ips = [
  '207.97.227.253'
  '50.57.128.197'
  '108.171.174.178'
]
authentication = ''
try authentication = fs.readFileSync '/usr/local/lib/docas/auth', 'utf-8'

# ## Service Hook
#
# Reject queuing into `DOCAS` queue if:
#
#   1. The request's source ip isn't listed in the `admin/hooks` page of your
#   repo.
#   2. The ref of the branch is not `refs/heads/master`.
#
# Tasks will be enqueued at **Fairy** queue named `DOCAS`, currently the
# arguments are:
#
#   1. `user/repo`
#
# The first argument `user/repo` will be used as the **Fairy** queue group
# identifier.
exports.hook = (req, res) ->
  res.send()
  return unless req.connection.remoteAddress in allowed_ips
  payload = JSON.parse req.body.payload
  return if payload.ref isnt 'refs/heads/master'
  [user, repo] = payload.repository.url.split('/')[-2..-1]
  options = 
    host: 'api.github.com'
    path: "/repos/#{user}/#{repo}"
    auth: authentication
  https.get options, (res) ->
    return unless res.statusCode is 200
    json = ''
    res.on 'data', (data) -> json += data
    res.on 'end', ->
      repo_object = JSON.parse(json)
      if repo_object.size < 100 * 1024
        queue.enqueue "#{user}/#{repo}"
  .end()
