const mysql = require("mysql");

var connection = mysql.createPool({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DB,
    port: process.env.PORT,
    multipleStatements:process.env.MULTIPLE_STATEMENTS
});

module.exports = connection;
