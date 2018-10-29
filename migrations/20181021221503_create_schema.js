const fs = require('fs');

exports.up = function (knex, Promise) {
  const sqlQuery = fs.readFileSync('./migrations/sql/qesystem_21_10_2018.sql', 'utf8');
  return knex.schema.raw(sqlQuery.toString());
  // return knex.schema.createTable('users', (table) => {
  //   table.increments();
  //   table.string('name');
  //   table.timestamps();
  // });
};

exports.down = function (knex, Promise) {

};
