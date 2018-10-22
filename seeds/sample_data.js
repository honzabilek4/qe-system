
exports.seed = knex => knex('build').del()
  .then(() => knex('build').insert([
    { id: 1, colName: 'rowValue1' },
    { id: 2, colName: 'rowValue2' },
    { id: 3, colName: 'rowValue3' },
  ]));
