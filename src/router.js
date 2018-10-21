const { Router } = require('express');
const SqlBuilder = require('knex')({
  client: 'pg',
  connection: process.env.CONNECTION_STRING,
});

const router = Router();

router.get('/:table', (request, response) => {
  SqlBuilder(request.params.table).select()
    .then((data) => {
      response.send(data).json();
    })
    .catch((error) => {
      response.send(error).json();
    });
});

router.get('/:table/:id', (request, response) => {
  SqlBuilder(request.params.table).select().where({ id: request.params.id })
    .then((data) => {
      response.send(data).json();
    })
    .catch((error) => {
      response.send(error).json();
    });
});

router.post('/:table', (request, response) => {
  SqlBuilder(request.params.table).insert(request.body)
    .then(() => {
      response.send(request.body).json();
    })
    .catch((error) => {
      response.send(error).json();
    });
});

module.exports = router;
