//enter your information to access your db, including your password
//rename this file as config.js
//this is part of .gitignore, so it will not be uploaded to the cloud

const Pool = require('pg').Pool
const pool = new Pool({
  user: '<posgresql username>',  //default is 'postgres'
  host: 'localhost',
  database: 'cen4010_group4',
  password: '<your password>',
  port: 5432,
})

module.exports.pool = pool;