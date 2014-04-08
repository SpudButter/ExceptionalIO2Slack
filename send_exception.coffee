send_slack = require './send_slack.coffee'

module.exports = (error) ->
  title = error['title']
  url = error['url']
  last = error['last_occurrence']
  url = last['url']
  method = last['request_method']
  line = last['backtrace'][0]

  message = "Exception: <#{url}|#{title}>, on #{method} <#{url}|#{url}>, line: #{line}"

  send_slack message

