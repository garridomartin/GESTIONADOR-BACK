const { Router } = require('express');
const router = Router();
const batchNewCost = require('../handlers/batchNewCost.handler');
const validateCSVUpload = require('../middleware/validateCSVUpload');
const { uploadBatchNewCost } = require('../config/multer.config');

router.put('/', uploadBatchNewCost, validateCSVUpload, batchNewCost);

module.exports = router;
