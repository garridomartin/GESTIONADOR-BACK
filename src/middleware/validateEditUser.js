const { body } = require('express-validator');

const validateEditUser = [
  body('name')
    .notEmpty()
    .withMessage('name es requerido')
    .isLength({ min: 3, max: 50 })
    .withMessage('El nombre debe tener entre 3 y 50 caracteres'),

  body('cellPhone')
    .notEmpty()
    .withMessage('Telefono es requerido')
    .isLength({ min: 10, max: 10 })
    .withMessage('Ingrese un telefono con el formato 1155554444')
    .isNumeric()
    .withMessage('El teléfono debe contener solo números'),

  body('cuil')
    .notEmpty()
    .withMessage('Cuil es requerido')
    .isLength({ min: 11, max: 11 })
    .withMessage('Ingrese un cuil/cuit con el formato 20222222224')
    .isNumeric()
    .withMessage('El cuil/cuit debe contener solo números'),
];

module.exports = validateEditUser;
