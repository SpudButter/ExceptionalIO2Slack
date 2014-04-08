Request = require("request")

module.exports = (message) ->
  slack_org     = process.env.SLACK_ORGANIZATION
  slack_botname = process.env.SLACK_BOTNAME
  slack_channel = process.env.SLACK_CHANNEL
  slack_token   = process.env.SLACK_TOKEN

  unless slack_org? and slack_channel? and slack_token?
    console.log "One of the required config variables missing:"
    console.log "SLACK_CHANNEL, SLACK_BOTNAME, SLACK_TOKEN or SLACK_ORG"
    process.exit()

  slack_url = "https://#{slack_org}.slack.com/services/hooks/incoming-webhook?token=#{slack_token}"

  slack_payload =
    json:
      text: message
      channel: slack_channel
      username: slack_botname

  # Post to Slack!
  console.log slack_url, slack_payload
  Request.post slack_url, slack_payload, (error, response, body) ->
    console.log(response.statusCode, body)

