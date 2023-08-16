const { validationResult } = require('express-validator');
const signInController = require('../controllers/signIn.controller');
const { log } = require('handlebars');

const signInHandler = async (req, res) => {
  // console.log(req.body);
  try {
    const errors = validationResult(req);
    if (!errors.isEmpty()) throw new Error(errors.array());

    const tokenReceived = await signInController(req.body);

    if (tokenReceived.error) return res.status(401).json(tokenReceived);

    return res.status(200).json({
      status: 'inicio de sesion exitoso',
      token: tokenReceived.token,
      expires: new Date(Date.now() + tokenReceived.expireIn * 1000),
      name: tokenReceived.nameUser,
      profilePict: tokenReceived.profilePict,
      isAdmin: tokenReceived.isAdmin,
      isSeller: tokenReceived.isSeller,
    });
  } catch (error) {
    return res.status(401).json({
      error: 'Error en la autenticación',
      details: error.message,
    });
  }
};

module.exports = { signInHandler };
