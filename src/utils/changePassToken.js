require('dotenv').config();
const jwt = require('jsonwebtoken');

let expiresIn = 1 * 60 * 60; //1 hora

const tokenCreated = (user, shhh) => {
  try {
    const token = jwt.sign(
      {
        email: user.email,
      },
      shhh,
      { expiresIn }
    );
    console.log('token created', token);
    return { token, expiresIn };
  } catch (error) {
    console.error('Error creating token:', error);
    throw new Error('Unable to create token: ' + error.message);
  }
};

//!NO SE UTILIZA EN ESTA APP
const refreshToken = (user, shhh) => {
  const expiresIn = 60 * 60 * 24 * 30;
  try {
    const refreshToken = jwt.sign(
      { id: user.id, email: user.email /*, password: user.password */ },
      shhh,
      {
        expiresIn,
      }
    );

    return refreshToken;
  } catch (error) {
    console.error('Error creating refresh token:', error);
    throw new Error('Unable to create refresh token: ' + error.message);
  }
};

module.exports = {
  refreshToken,
  tokenCreated,
};
