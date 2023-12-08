const { Router } = require('express');
const router = Router();
const jwt = require('jsonwebtoken');
const { SECRET_KEY } = process.env;
const confirmEmailController = require('../controllers/emailConfirmation.controller.js');

const emailConfirmation = async (req, res) => {
  // const token = req.params.token;
  try {
    //const decodedToken = jwt.verify(token, SECRET_KEY);
    //const userId = decodedToken.user.id;

    const result = await confirmEmailController(req.email);
    res.status(200).json(result);
  } catch (error) {
    console.error('Error during email confirmation:', error);
    res.status(500).json({ error: 'Error al confirmar el correo electrónico' });
  }
};

module.exports = emailConfirmation;
