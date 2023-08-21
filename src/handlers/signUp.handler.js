const signUpController = require('../controllers/signUp.controller');
const { validationResult } = require('express-validator');
//const { USER_CREATION } = process.env;

const signUp = async (req, res) => {
  try {
    const errors = validationResult(req.body);
    if (!errors.isEmpty()) throw new Error(errors.array());
    const { name, password, cellPhone, /* birthDay, cuil,*/ email } = req.body;

    const signInUp = await signUpController(
      name,
      password,
      cellPhone,
      // birthDay,
      //  cuil,
      email
      //  req.file
    );

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
    return res.status(401).json({
      error: 'campos incompletos o su tipo no coincide con el indicado',
    });
  }
};

module.exports = signUp;
