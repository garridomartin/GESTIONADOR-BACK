const express = require('express');
const bodyParser = require('body-parser');
const morgan = require('morgan');
const mainRouter = require('./routes/index');
const cors = require('cors');
require('./db.js');
require('dotenv').config();
const server = express();

server.name = 'API';
server.use(express.json());
server.use(morgan('dev'));
server.use(cors());
/*
server.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*'); // update to match the domain you will make the request from
  res.header('Access-Control-Allow-Credentials', 'true');
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept'
  );
  res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
  next();
});*/

server.use((err, req, res, next) => {
  // eslint-disable-line no-unused-vars
  const status = err.status || 500;
  const message = err.message || err;
  console.error(err);
  res.status(status).send(message);
});

server.use(mainRouter);

module.exports = server;
