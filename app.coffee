DotEnv     = require("dotenv-node")
Express    = require("express")
send_exception = require('./send_exception.coffee')

new DotEnv() # Load .env file

String::trim = ->
  @replace /^\s+|\s+$/g, ""

app = Express()
app.use Express.logger()
app.use Express.bodyParser()

app.post "/exception/?", (request, response) ->
  console.log request.body
  send_exception request.body['error']
  response.send "Outch but thanks for the exception"

app.all "*", (request, response) ->
  response.send "Hi! Go Away!"

port = process.env.PORT or 5000
app.listen port, ->
  console.log "Listening on " + port
