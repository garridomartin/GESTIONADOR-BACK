const { SECRET_KEY } = process.env;
const jwt = require('jsonwebtoken');

const verifyToken = (req, res, next) => {
  try {
    let token;

    if (req.url.startsWith('/confirmEmail/')) {
      // Verificar token proporcionado como parámetro en la URL
      token = req.params.token;
    } else if (req.headers.authorization) {
      // Verificar token proporcionado en los encabezados
      token = req.headers.authorization.split('Bearer').pop().trim();
    } else if (req.cookies && req.cookies.token) {
      // Verificar token almacenado en las cookies
      token = req.cookies.token;
    } else {
      // No se proporcionó ningún token
      console.error(
        'Error al verificar el token: No se proporcionó ningún token'
      );
      return res
        .status(401)
        .json({ error: 'Acceso no autorizado. Por favor inicie sesión.' });
    }

    // Verificar el token utilizando la clave secreta
    const tokenized = jwt.verify(token, SECRET_KEY);
    req.id = tokenized.id;
    req.email = tokenized.email;
    req.username = tokenized.username;
    next();
  } catch (error) {
    console.error(`Error al verificar el token de usuario: ${error.message}`);
    return res
      .status(401)
      .json({ error: 'Acceso no autorizado. Token inválido o expirado.' });
  }
};
//este token, solo pasa el email
const verifyTokenChangePass = (req, res, next) => {
  let token = '';
  try {
    if (req.headers.authorization) {
      token = req.headers.authorization.split('Bearer').pop().trim();
    } else {
      console.error(
        'Error al verificar el token: No se proporcionó ningún token'
      );
      return res
        .status(401)
        .json({ error: `Error al verificar el token: ${error.message}` });
    }

    const tokenized = jwt.verify(token, SECRET_KEY);

    req.email = tokenized.email;

    next();
  } catch (error) {
    console.error(`Error al verificar el token de usuario: ${error.message}`);
    return res
      .status(401)
      .json({
        error: `Error al verificar el token de usuario: ${error.message}`,
      });
  }
};

module.exports = { verifyToken, verifyTokenChangePass };
