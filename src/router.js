const { Router } = require('express');
const { Client } = require('pg');
const squel = require('squel');

const router = Router();

router.get('/:table', (request, response) => {
  const client = new Client(process.env.CONNECTION_STRING);
  client.connect().catch((e) => {
    console.log(e);
  });
  const query = squel.select().from(request.params.table).toString();
  client.query(query, (err, res) => {
    response.send(res);
    client.end();
  });
});

router.get('/:table/:id', (request, response) => {
  const client = new Client(process.env.CONNECTION_STRING);
  client.connect().catch((e) => {
    console.log(e);
  });
  const query = squel.select().from(request.params.table).where('id=?', request.params.id).toString();
  client.query(query, (err, res) => {
    response.send(res);
    client.end();
  });
});

router.post('/:table', (request, response) => {
  const client = new Client(process.env.CONNECTION_STRING);
  client.connect().catch((e) => {
    console.log(e);
  });
  const query = squel.insert().into(request.params.table).setFields(request.body).toString();
  client.query(query, () => {
    // console.log(err, res);
    response.send(request.body);
    client.end();
  });
});

module.exports = router;
