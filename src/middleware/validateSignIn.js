const { body } = require('express-validator');

const validateSignIn = [
  body('password').notEmpty().withMessage('password es requerido'),
  body('email').notEmpty().withMessage('email es requerido'),
];

module.exports = validateSignIn;
