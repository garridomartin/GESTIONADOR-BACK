const { body } = require('express-validator');

const validateResetPassword = [
  body('password').notEmpty().withMessage('password es requerido'),
];

module.exports = validateResetPassword;
