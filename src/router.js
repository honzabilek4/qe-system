const { Router } = require('express');
const SqlBuilder = require('knex')({
  client: 'pg',
  connection: process.env.CONNECTION_STRING,
});
const asyncHandler = require('./asyncHandler');

const router = Router();

router.get('/:table', asyncHandler(async (request, response) => {
  const data = await SqlBuilder(request.params.table).select();
  response.json(data);
}));

router.get('/:table/:id', asyncHandler(async (request, response) => {
  const data = await SqlBuilder(request.params.table).select().where({ id: request.params.id });
  response.json(data);
}));

router.post('/:table', asyncHandler(async (request, response) => {
  const data = await SqlBuilder(request.params.table).insert(request.body).returning('*');
  response.json(data);
}));

module.exports = router;
