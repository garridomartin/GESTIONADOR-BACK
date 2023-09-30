const express = require('express');
const bodyParser = require('body-parser');
const morgan = require('morgan');
const mainRouter = require('./routes/index');
const cors = require('cors');

const server = express();

server.name = 'API';
server.use(express.json());
server.use(morgan('dev'));

server.use(cors());

server.use((err, req, res, next) => {
    // eslint-disable-line no-unused-vars
    const status = err.status || 500;
    const message = err.message || err;
    console.error(err);
    res.status(status).send(message);
});

server.use(mainRouter);

module.exports = server;
