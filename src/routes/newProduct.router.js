const { Router } = require('express');
const router = Router();
const createProduct = require('../handlers/createProduct.handler');
const validateCreateProduct = require('../middleware/validateCreateProduct');
const { uploadCreateProduct } = require('../config/multer.config');

router.post(
  '/',
  /*uploadCreateProduct, validateCreateProduct, */ createProduct
);

module.exports = router;
