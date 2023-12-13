const { body } = require('express-validator');

const validateCreateProduct = [
  body('name').notEmpty().isString().withMessage('Problem with name send'),
  body('cost')
    .notEmpty()
    .isFloat({ min: 0 })
    .withMessage('Cost must be a positive number'),
  body('priceML')
    .notEmpty()
    .isFloat({ min: 0 })
    .withMessage('PriceML must be a positive number'),
  body('priceEComm')
    .notEmpty()
    .isFloat({ min: 0 })
    .withMessage('PriceEComm must be a positive number'),
  body('priceLocal')
    .notEmpty()
    .isFloat({ min: 0 })
    .withMessage('PriceLocal must be a positive number'),
  body('quantity')
    .notEmpty()
    .isFloat({ min: 0 })
    .withMessage('Quantity must be a positive number'),
];

const validateEditProduct = [
  body('id').notEmpty().isInt().withMessage('ID must be a valid integer'),
  body('name').optional().isString().withMessage('Problem with name send'),
  body('cost')
    .optional()
    .isFloat({ min: 0 })
    .withMessage('Cost must be a positive number'),
  body('priceML')
    .optional()
    .isFloat({ min: 0 })
    .withMessage('PriceML must be a positive number'),
  body('priceEComm')
    .optional()
    .isFloat({ min: 0 })
    .withMessage('PriceEComm must be a positive number'),
  body('priceLocal')
    .optional()
    .isFloat({ min: 0 })
    .withMessage('PriceLocal must be a positive number'),
  body('quantity')
    .optional()
    .isFloat({ min: 0 })
    .withMessage('Quantity must be a positive number'),
  // Add validations for other optional fields if needed
];

module.exports = { validateCreateProduct, validateEditProduct };
