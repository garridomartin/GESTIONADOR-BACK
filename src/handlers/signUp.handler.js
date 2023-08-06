require('dotenv').config();
const signUpController = require('../controllers/signUp.controller');
const { validationResult } = require('express-validator');
const { USER_CREATION } = process.env;

const signUp = async (req, res) => {
  try {
    const errors = validationResult(req);

    if (!errors.isEmpty()) throw new Error(errors.array());

    const signInUp = await signUpController(req.body, USER_CREATION);

    if (signInUp?.error) {
      return res.status(401).json(signInUp);
    }

    return res.status(200).json({
      status: 'usuario creado con exito',
      notification: `Correo enviado con exito a ${signInUp}`,
    });
  } catch (error) {
    console.log(error);
    return res.status(401).json({
      error: 'campos incompletos o su tipo no coincide con el indicado',
    });
  }
};

module.exports = signUp;
