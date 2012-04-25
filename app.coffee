port = process.env.PORT || 5000

express = require 'express'
_ = require 'underscore'
coffeekup = require 'coffeekup'
socketio = require 'socket.io'

app = express.createServer()
io = socketio.listen app

# needed for hosting on heroku
io.configure ->
	io.set 'transports', ['xhr-polling']
	io.set 'polling duration', 10

app.configure ->
	app.use express.methodOverride()
	app.use express.bodyParser()
	app.use app.router
	app.use express.static __dirname + '/public'
	app.set 'views', __dirname + '/views'
	app.set 'view engine', 'coffee'
	app.register '.coffee', coffeekup.adapters.express

app.get '/', (req, res) ->
	res.render 'index'

app.listen port
console.log 'The Bet started on part %d', port
