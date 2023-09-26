const { Router } = require('express');
const router = Router();
const { sellByEcomm } = require('../handlers/sellByEcomm.handler');
const amountCheck = require('../middleware/amountCheck');
const quantityCheck = require('../middleware/quantityCheck');
const userCheck = require('../middleware/userCheck');

router.post('/', userCheck, quantityCheck, amountCheck, sellByEcomm);

module.exports = router;
