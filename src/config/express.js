const express = require('express');
const morgan = require('morgan');
const bodyParser = require('body-parser'); 
const methodOverride = require('method-override');
const cors = require('cors');

const helmet = require('helmet'); 
const routes = require('../api/routes/v1');
const { logs } = require('./vars');  

 
const app = express();
 
app.use(morgan(logs)); 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
 
app.use(methodOverride());
 
app.use(helmet()); 
app.use(cors()); 

app.get("/", (req, res) => {
    res.status(200).json({
      message: "Welcome to the backend",
      environment: process.env.NODE_ENV,
    });
  });

// mount api v1 routes
app.use('/v1', routes);

 

module.exports = app;
