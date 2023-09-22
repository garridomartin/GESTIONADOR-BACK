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
      ///console.log('linea 17 verifyToken:', req.cookies.token);
    } else {
      //  console.log('no pasa nada');
      // No se proporcionó ningún token
      return res.status(401).json({ error: 'Unauthorized access' });
    }

    // Verificar el token utilizando la clave secreta
    const tokenized = jwt.verify(token, SECRET_KEY);
    req.id = tokenized.id;
    req.email = tokenized.email;
    req.username = tokenized.username;
    //console.log('este log es de la verificacion del token:', tokenized);
    next();
  } catch (error) {
    return res.status(401).json({ error: 'Unauthorized access' });
  }
};

module.exports = verifyToken;
