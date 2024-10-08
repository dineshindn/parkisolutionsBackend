const mysql = require("mysql2");
const util = require("util");
const { mysqlPool } = require('./vars');

const pool = mysql.createPool({
  connectionLimit: mysqlPool.connectionLimit,
  host: mysqlPool.host,
  user: mysqlPool.username,
  password: mysqlPool.password,
  database: mysqlPool.database,
  timezone: mysqlPool.timezone,
  multipleStatements: true,
});

 
pool.getConnection((err, connection) => { 
  if (err) {
    if (err.code === "PROTOCOL_CONNECTION_LOST") {
      console.error("Database connection was closed.");
    }
    if (err.code === "ER_CON_COUNT_ERROR") {
      console.error("Database has too many connections.");
    }
    if (err.code === "ECONNREFUSED") {
      console.error("Database connection was refused.");
    }
  }

  if (connection) { 
    connection.release();
  }

  return;
}); 
pool.query = util.promisify(pool.query);

module.exports = pool;
