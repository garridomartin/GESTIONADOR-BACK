const { Router } = require('express');
const router = Router();
const editProduct = require('../handlers/editProduct.handler');
const validateCreateProduct = require('../middleware/validateCreateProduct');
const { uploadCreateProduct } = require('../config/multer.config');

router.put('/', uploadCreateProduct, validateCreateProduct, editProduct);

module.exports = router;
