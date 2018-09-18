var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('hey man!')
});

app.listen(process.env.PORT);