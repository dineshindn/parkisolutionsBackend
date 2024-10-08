const dotenv = require("dotenv");
dotenv.config({ path: `.${process.env.NODE_ENV}.env` });


module.exports = {
  env: process.env.NODE_ENV,
  port: process.env.PORT, 
  logs: process.env.NODE_ENV === 'production' ? 'combined' : 'dev',
  mysqlPool: {
    username: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE,
    host: process.env.DB_HOST,
    connectionLimit: process.env.DB_CONNECTIONLIMIT,
    timezone: process.env.DB_TIMEZONE,
  }, 
};
