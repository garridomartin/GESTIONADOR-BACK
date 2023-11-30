const signUpController = require('../controllers/signUp.controller');
const { validationResult } = require('express-validator');
//const { USER_CREATION } = process.env;

const signUp = async (req, res) => {
  try {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(422).json({ errors: errors.array() });
    }

    const { name, password, email } = req.body;

    const signInUp = await signUpController(name, password, email);

    if (signInUp?.error) {
      return res.status(401).json(signInUp);
    }

    const notificationName = signInUp?.name || 'Usuario';

    return res.status(200).json({
      status: 'usuario creado con exito',
      notification: `Correo enviado con exito a ${notificationName}`,
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({
      error: 'Error interno del servidor',
    });
  }
};

module.exports = signUp;
