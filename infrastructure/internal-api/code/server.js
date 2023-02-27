const http = require('http');
const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const { spawnSync} = require('child_process');

const app = express();
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());
app.use(express.json());
app.use(express.static("express"));

app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

app.post('/', function (req, res) {
    var endpoint = req.body.endpoint, method = req.body.method || 'GET', headers = req.body.headers || {};

    const child = spawnSync('curl', [endpoint, '-H', headers, '-X', method]);
    
    if (child.stdout) {
        res.send(child.stdout)
    } else if (child.err) {
        res.send(child.err)
    } else {
        res.send(child.stderr)
    }
    
    // fetch(endpoint, {
    //     method: method,
    //     headers: headers,
    // })
    //     .then(res => res.json())
    //     .then(json => res.send(json))
    //     .catch(json => res.send(json));
    // res.sendFile(path.join(__dirname + '/express/index.html'))
})

const server = http.createServer(app);
const port = 3000;
server.listen(port);
console.debug('Server listening on port ' + port);
