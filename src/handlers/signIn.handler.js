const { validationResult } = require('express-validator');
const signInController = require('../controllers/signIn.controller');

const signInHandler = async (req, res) => {
  //console.log(req.body);
  //console.log(req.cookies);
  try {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      const errorMessages = errors.array().map((error) => error.msg);
      return res.status(400).json({
        error: 'Error en la validación de datos',
        details: errorMessages,
      });
    }

    const tokenReceived = await signInController(req.body);

    if (tokenReceived.error) {
      return res.status(401).json({
        error: 'Error en la autenticación',
        message: tokenReceived.error,
      });
    } else {
      const cookieDuration = tokenReceived.isAdmin ? 1 * 60 * 60 : 24 * 60 * 60; //8 horas ò 24
      /********** modified by 🥑🌌🔥 Enok Lima ************/
      return res
        .status(200)
        .cookie('token', tokenReceived.token, {
          expires: new Date(Date.now() + cookieDuration * 1000),
          //expires: new Date(Date.now() + tokenReceived.expireIn * 1000),
          httpOnly: true,
          sameSite: 'strict', //'none',
          // secure: true, // Agrega esta línea si estás usando HTTPS
        })
        .json({
          isAuthenticated: true,
          username: tokenReceived.userName,
          name: tokenReceived.nameUser,
          email: tokenReceived.Email,
          profilePict: tokenReceived.profilePict,
          isAdmin: tokenReceived.isAdmin,
          isSeller: tokenReceived.isSeller,
        });
    }
    /********************** 🥑🌌🔥 ************************/

    /**return res.status(200).json({
      status: 'inicio de sesion exitoso',
      token: tokenReceived.token,
      expires: new Date(Date.now() + tokenReceived.expireIn * 1000),
      name: tokenReceived.nameUser,
      profilePict: tokenReceived.profilePict,
      isAdmin: tokenReceived.isAdmin,
      isSeller: tokenReceived.isSeller,
    });*/
  } catch (error) {
    console.log('Error en signInController:', error.message);
    return res.status(401).json({
      error: 'Error en la autenticación',
      message: error.message,
    });
  }
};

module.exports = { signInHandler };
