const fs = require('fs');

<<<<<<< HEAD
exports.up = function up(knex, Promise) {
=======
exports.up = function (knex, Promise) {
>>>>>>> knexjs
  const sqlQuery = fs.readFileSync('./migrations/sql/qesystem_21_10_2018.sql', 'utf8');
  return knex.schema.raw(sqlQuery.toString());
};

exports.down = function down(knex, Promise) {

};
