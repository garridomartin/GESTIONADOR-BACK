const { body } = require('express-validator');

const validateRequestPassword = [
  body('email').notEmpty().withMessage('email es requerido'),
];

module.exports = validateRequestPassword;
