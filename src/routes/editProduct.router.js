const { Router } = require('express');
const router = Router();
const editProduct = require('../handlers/editProduct.handler');
const { validateEditProduct } = require('../middleware/validateCreateProduct');
const { uploadCreateProduct } = require('../config/multer.config');

router.put('/', uploadCreateProduct, validateEditProduct, editProduct);

module.exports = router;
