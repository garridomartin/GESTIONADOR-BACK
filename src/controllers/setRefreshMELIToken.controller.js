const { MELIAccesToken } = require('../db');
const axios = require('axios');
require('dotenv').config();
const { APP_ID, SECRET_KEY, apiUrl } = process.env;
const refreshTokenInterval = 5.9 * 60 * 60 * 1000;

let UserId;

const setUserId = (id) => {
  UserId = id;
};

const meliSessionController = async (id) => {
  try {
    if (!UserId) {
      throw new Error('No se proporcionó UserId');
    }
    const latestToken = await MELIAccesToken.findOne({
      where: {
        UserId: id,
      },
      order: [['createdAt', 'DESC']],
    });

    if (!latestToken) {
      throw new Error(
        'El usuario no tiene ningún token de acceso a MELI generado'
      );
    } else {
      const data = {
        grant_type: 'refresh_token',
        client_id: APP_ID,
        client_secret: SECRET_KEY,
        refresh_token: latestToken.refresh_token,
      };
      try {
        const response = await axios.post(apiUrl, data, {
          headers: {
            accept: 'application/json',
            'content-type': 'application/x-www-form-urlencoded',
          },
        });
        const tokenData = response.data.refresh_token; // Asegúrate de acceder a la propiedad 'refresh_token' en 'data'
        console.log('Refresh Token Response:', tokenData);

        latestToken.refresh_token = tokenData;
        await latestToken.save();
      } catch (error) {
        console.error('Error al refrescar el token:', error);
        throw error;
      }
    }
  } catch (error) {
    console.error(error.message);
    throw error;
  }
};
const refreshTokenHandler = () => {
  if (UserId) {
    meliSessionController(UserId);
    const now = new Date();
    console.log('REFRESH TOKEN GENERADO', now.toTimeString());
  } else {
    const now = new Date();
    console.log(
      'No hay UserId definido, no se ejecutó la renovación de sesión a las',
      now.toTimeString()
    );
  }
};

intervalId = setInterval(refreshTokenHandler, refreshTokenInterval);

module.exports = { meliSessionController, setUserId, intervalId };
