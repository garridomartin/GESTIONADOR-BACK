const { body } = require('express-validator');

const validateSignUp = [
  body('name').notEmpty().withMessage('name es requerido'),
  body('password').notEmpty().withMessage('password es requerido'),
  body('email').notEmpty().withMessage('email es requerido'),
  body('cellPhone').notEmpty().withMessage('cellPhone es requerido'),
  body('birthDay').notEmpty().withMessage('birthDay es requerido'),
];

module.exports = validateSignUp;
