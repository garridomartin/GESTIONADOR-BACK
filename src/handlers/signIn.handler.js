const { validationResult } = require('express-validator');
const signInController = require('../controllers/signIn.controller');
const { log } = require('handlebars');

const signInHandler = async (req, res) => {
  //console.log(req.body);
  //console.log(req.cookies);
  try {
    const errors = validationResult(req);
    if (!errors.isEmpty()) throw new Error(errors.array());

    const tokenReceived = await signInController(req.body);

    if (tokenReceived.error || tokenReceived.warn) return res.status(200).json(tokenReceived);

    /********** modified by 🥑🌌🔥 Enok Lima ************/
    return res
      .status(200)
      .cookie('token', tokenReceived.token, {
        expires: new Date(Date.now() + tokenReceived.expireIn * 1000),
        httpOnly: true,
        sameSite: 'strict',
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
    return res.status(401).json({
      error: 'Error en la autenticación',
      details: error.message,
    });
  }
};

module.exports = { signInHandler };
