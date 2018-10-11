const express = require('express');
const { Client } = require('pg');

const app = express();

app.get('/', (request, response) => {
  const client = new Client(process.env.CONNECTION_STRING);
  client.connect().catch((e) => {
    console.log(e);
  });
  client.query('SELECT NOW()', (err, res) => {
    response.send(res);
    client.end();
  });
});

app.listen(process.env.PORT);
