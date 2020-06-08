var express = require('express')
var bodyParser = require('body-parser')
var ejs = require('ejs')
var morgan = require('morgan')
const exec = require('child_process').exec;
var config = require('./config/server')
const basicAuth = require('express-basic-auth')

//Initialize Express
var app = express()

//Basic auth
app.use(basicAuth({
	users: { 'admin': 'kubernetesgoat' },
	challenge: true
}))

app.use(express.static('public'))
app.set('view engine','ejs')
app.use(morgan('tiny'))
app.use(bodyParser.urlencoded({ extended: false }))

// For Reverse proxy support
// app.set('trust proxy', 1) 

// Routing
app.get('/',function(req,res){
    res.render('index',{output: 'Enter IP address and press PING'})
})


// Ping functionality
app.post('/',function(req,res){
	exec('ping -c 2 ' + req.body.ip, function (err, stdout, stderr) {
		var output = stdout + stderr
		res.render('index', {
			output: output
		})
	})
})

// Start Server
app.listen(config.port, config.listen)