const mysql = require("mysql2");
const util = require("util")
const pool = mysql.createConnection({
    host:"localhost",
    database:"jobstype",
    connectionLimit: 10,
    timezone: "Z",
    user:"root",
    password:""
});



pool.query = util.promisify(pool.query);

module.exports = pool;
 
