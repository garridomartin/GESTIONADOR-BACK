require('dotenv').config();
const jwt = require('jsonwebtoken');

let expiresIn = 1 * 6 * 60 * 24 * 30; //30 dias

const tokenCreated = (user, shhh) => {
  try {
    const token = jwt.sign(
      {
        id: user.id,
        email: user.email,
        username: user.username  //-----> added by Enok Lima
        /*passsword: user.password,*/,
      },
      shhh,
      { expiresIn }
    );
    return { token, expiresIn };
  } catch (error) {
    console.error('Error creating token:', error);
    throw new Error('Unable to create token: ' + error.message);
  }
};

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
