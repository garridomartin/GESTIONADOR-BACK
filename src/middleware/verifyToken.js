const { SECRET_KEY } = process.env;
const jwt = require('jsonwebtoken');

const verifyToken = (req, res, next) => {
  if (req.url.startsWith('/confirmEmail/')) {
    const token = req.params.token;
    if (!token) {
      return res.status(401).json({ isAuthenticated: false });
    }

    try {
      const tokenized = jwt.verify(token, SECRET_KEY);
      req.id = tokenized.id;
      req.email = tokenized.email;
      req.username = tokenized.username;
      next();
    } catch (error) {
      console.log(error);
      return res.status(401).json({ error: 'Unauthorized access' });
    }
  } else {
    const { token } = req.cookies; // ------> added by Enok Lima for get token from cookies
    console.log(req.cookies);
    !token && res.status(200).json({ isAuthenticated: false }); // ------> added by Enok Lima for verify if token exist

    try {
      //let token = req.headers.authorization; // ------> commented by Enok Lima

      //token = token.split('Bearer').pop().trim(); // ------> commented by Enok Lima

      const tokenized = jwt.verify(token, SECRET_KEY);
      req.id = tokenized.id;
      req.email = tokenized.email;
      req.username = tokenized.username; // ------> added by Enok Lima

      next();
    } catch (error) {
      console.log(error); // ------> added by Enok Lima
      //return res.status(401).json({ error: 'Unauthorized access' }); // ------> commented by Enok Lima
    }
  }
};

module.exports = verifyToken;
