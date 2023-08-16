const { User } = require('../db.js');
const requestPasswordController = require('../controllers/requestPasswordController.controller');
const { validationResult } = require('express-validator');

const requestPasswordReset = async (req, res) => {
  const { email } = req.body;

  try {
    const errors = validationResult(req); //si no anda, va req.body
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    const user = await User.findOne({ where: { email } });
    if (!user) {
      return res.status(404).json({ error: 'El usuario no está registrado' });
    }

    const requestReset = await requestPasswordController(user);

    if (requestReset.error) {
      return res.status(401).json(requestReset);
    }

    return res.status(200).json({
      message: 'Correo de solicitud de cambio de contraseña enviado con éxito',
    });
  } catch (error) {
    console.error('Error during password recovery:', error);
    return res.status(500).json({
      error: 'Ocurrió un error durante la recuperación de contraseña',
    });
  }
};

module.exports = requestPasswordReset;
