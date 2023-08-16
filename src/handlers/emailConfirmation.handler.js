const { Router } = require('express');
const router = Router();
const confirmEmailController = require('../controllers/emailConfirmationController.js');

const emailConfirmation = async (req, res) => {
  try {
    const { userId } = req.params;
    const result = await confirmEmailController(userId);
    res.status(200).json(result);
  } catch (error) {
    console.error('Error during email confirmation:', error);
    res.status(500).json({ error: 'Error al confirmar el correo electrónico' });
  }
};

module.exports = emailConfirmation;
