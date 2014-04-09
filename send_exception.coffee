send_slack = require './send_slack.coffee'

module.exports = (error) ->
  title = error['title']
  url = error['url']
  last = error['last_occurrence']
  url = last['url'] or ''
  method = last['request_method'] or ''
  if last? and last['backtrace']?
    line = last['backtrace'][0]
  else
    line = ''

  message = "Exception: <#{url}|#{title}>, on #{method} <#{url}|#{url}>, line: #{line}"

  send_slack message

