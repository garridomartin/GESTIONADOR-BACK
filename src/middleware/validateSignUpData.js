const { body, validationResult } = require('express-validator');

const validateSignUp = [
  body('name').notEmpty().withMessage('name es requerido'),
  body('password').notEmpty().withMessage('password es requerido'),

  body('email').notEmpty().withMessage('email es requerido'),
];

module.exports = validateSignUp;
