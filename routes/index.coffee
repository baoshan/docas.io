
# ## Homepage
#
# Use **Express** to render the homepage.
exports.index = (req, res) ->
  res.render 'index', { title: 'Express' }

# **[Fairy]** queue named `DOCAS` is used to queue the documentation tasks.
#
# [Fairy]: https://github.com/baoshan/fairy
queue = require('fairy').connect().queue('DOCAS')
allowed_ips = ['207.97.227.253', '50.57.128.197', '108.171.174.178']
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
  return if allowed_ips.indexOf(req.connection.remoteAddress) is -1
  payload = JSON.parse req.body.payload
  return if payload.ref isnt 'refs/heads/master'
  [user, repo] = payload.repository.url.split('/')[-2..-1]
  options = 
    host: 'api.github.com'
    path: "/repos/#{user}/#{repo}"
    auth: authentication
  req = https.get options, (res) ->
    return if res.statusCode isnt 200
    json = ''
    res.on 'data', (data) -> json += data.toString()
    res.on 'end', ->
      repo = JSON.parse(json)
      if repo.size < 51200
        queue.enqueue "#{user}/#{repo}"
  req.end()
