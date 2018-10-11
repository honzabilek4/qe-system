const express = require('express');
const { Client } = require('pg');

const app = express();


app.get('/:table', (request, response) => {
  const client = new Client(process.env.CONNECTION_STRING);
  client.connect().catch((e) => {
    console.log(e);
  });
  const query = `SELECT * FROM ${request.params.table}`;
  client.query(query, (err, res) => {
    console.log(err, res);
    response.send(res);
    client.end();
  });
});

app.listen(process.env.PORT);
