const { Router } = require('express');
const { Client } = require('pg');
const SqlBuilder = require('knex')({
  client: 'pg',
  connection: process.env.CONNECTION_STRING,
});

const router = Router();

router.get('/:table', (request, response) => {
  const client = new Client(process.env.CONNECTION_STRING);
  client.connect().catch((e) => {
    console.log(e);
  });
  const query = SqlBuilder.select().from(request.params.table).toString();
  client.query(query, (err, res) => {
    response.send(res.rows);
    client.end();
  });
});

router.get('/:table/:id', (request, response) => {
  const client = new Client(process.env.CONNECTION_STRING);
  client.connect().catch((e) => {
    console.log(e);
  });
  const query = SqlBuilder.select().from(request.params.table).where({ id: request.params.id }).toString();
  client.query(query, (err, res) => {
    response.send(res.rows);
    client.end();
  });
});

router.post('/:table', (request, response) => {
  const client = new Client(process.env.CONNECTION_STRING);
  client.connect().catch((e) => {
    console.log(e);
  });
  const query = SqlBuilder(request.params.table).insert(request.body).toString();
  client.query(query, () => {
    response.send(request.body);
    client.end();
  });
});

module.exports = router;
