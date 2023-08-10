//const { log } = require('handlebars');
const resetPassController = require('../controllers/resetPassController.controller');
const { validationResult } = require('express-validator');
const { RESET_PASSWORD } = process.env;

const resetPassword = async (req, res) => {
  try {
    const errors = validationResult(req.body);

    if (!errors.isEmpty()) throw new Error(errors.array());
    const { email } = req.body;

    const resetPass = await resetPassController(email, RESET_PASSWORD);

    if (resetPass?.error) {
      return res.status(401).json(resetPass);
    }

    // Verifica si resetPass tiene una propiedad 'name' antes de usarla
    const notificationName = resetPass?.email || 'Usuario';

    return res.status(200).json({
      status: 'Password reseteado con exito',
      notification: `Correo de recuperación de contraseña enviado con éxito a ${notificationName}`,
    });
  } catch (error) {
    console.error('Error during password recovery:', error);
    return res.status(500).json({
      error: 'Ocurrió un error durante la recuperación de contraseña',
    });
  }
};

module.exports = resetPassword;
