const { Router } = require('express');
const { Client } = require('pg');
const squel = require('squel').useFlavour('postgres');

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


module.exports = router;
