const { body } = require('express-validator');

const validateSignUp = [
  body('name')
    .notEmpty()
    .withMessage('name es requerido')
    .isLength({ min: 3, max: 50 })
    .withMessage('El nombre debe tener entre 3 y 50 caracteres'),

  body('password')
    .notEmpty()
    .withMessage('password es requerido')
    .isLength({ min: 8 })
    .withMessage('La contraseña debe tener al menos 8 caracteres')
    .matches(
      /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/
    )
    .withMessage(
      'La contraseña debe contener al menos una mayúscula, una minúscula, un número y un carácter especial'
    ),

  body('email')
    .notEmpty()
    .withMessage('email es requerido')
    .isEmail()
    .withMessage('Ingrese un correo electrónico válido'),
];

module.exports = validateSignUp;
