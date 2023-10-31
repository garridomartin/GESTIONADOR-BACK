const { MELIAccesToken } = require('../db');
const axios = require('axios');
require('dotenv').config();
const { APP_ID, SECRET_KEY, REDIRECT_URI, apiUrl } = process.env;

const checkTokenMELIExpire = async (req, res, next) => {
  try {
    const UserId = req.id;

    // Busca el token más reciente para el usuario actual.
    const latestToken = await MELIAccesToken.findOne({
      where: {
        UserId,
      },
      order: [['createdAt', 'DESC']],
    });

    if (!latestToken) {
      return res.status(404).json({
        message: 'El usuario no tiene ningún token de acceso a MELI generado',
      });
    }

    const tokenCreatedAt = latestToken.updatedAt;
    const currentTime = new Date();
    const timeDifference = currentTime - tokenCreatedAt;
    const hoursDifference = timeDifference / (1000 * 60 * 60);
    console.log('hoursDifference:', hoursDifference);
    if (hoursDifference >= 5) {
      const data = {
        grant_type: 'refresh_token',
        client_id: APP_ID,
        client_secret: SECRET_KEY,
        refresh_token: latestToken.refresh_token,
      };
      try {
        const response = await axios.post(`${apiUrl}/oauth/token`, data, {
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

    next();
  } catch (error) {
    return res.status(500).json({
      error: 'Error en el chequeo de la antigüedad del token',
      details: error.message,
    });
  }
};

module.exports = checkTokenMELIExpire;
