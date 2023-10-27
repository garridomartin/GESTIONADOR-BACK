//controller
const { MELIAccesToken, IntervalStatus } = require('../db');
const axios = require('axios');
require('dotenv').config();
const { APP_ID, SECRET_KEY, apiUrl } = process.env;
const refreshTokenInterval = 5.9 * 60 * 60 * 1000;

//let isIntervalActive = false;
let intervalId = null;

const startInterval = async (UserId) => {
  const isIntervalActive = await IntervalStatus.findOne({ where: { id: 1 } });
  console.log(
    'asi esta seteado isIntervalActive en la base de datos',
    isIntervalActive.is_active
  );
  if (!isIntervalActive.is_active) {
    await IntervalStatus.update({ is_active: true }, { where: { id: 1 } });
    intervalId = setInterval(() => {
      console.log('Intervalo activado');
      meliSessionController(UserId);
    }, refreshTokenInterval);
  } else {
    console.log('El intervalo ya estaba activado');
  }
};

const stopInterval = async () => {
  const isIntervalActive = await IntervalStatus.findOne({ where: { id: 1 } });
  if (isIntervalActive.is_active) {
    clearInterval(intervalId);
    //isIntervalActive = false;
    IntervalStatus.update({ is_active: false }, { where: { id: 1 } })
      .then(() => {
        console.log('Intervalo detenido');
      })
      .catch((error) => {
        console.error('Error al actualizar IntervalStatus:', error);
      });
  } else {
    // Agregar un mensaje si intentas detener un intervalo que ya está inactivo
    console.log('El intervalo ya estaba detenido');
  }
};

const meliSessionController = async (id) => {
  try {
    if (!id) {
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
        const tokenData = response.data.refresh_token;
        console.log('Refresh Token Response:', tokenData);

        latestToken.refresh_token = tokenData;
        await latestToken.save();
      } catch (error) {
        console.error('Error al refrescar el token:', error);
        throw error;
      }
    }
  } catch (error) {
    console.error('Error en meliSessionController:', error);

    // Aquí puedes enviar una respuesta de error personalizada al cliente
    return {
      error: 'Ocurrió un error al renovar la sesión',
      details: error.message,
    };
  }
};

module.exports = {
  startInterval,
  stopInterval,
  meliSessionController,
  meliSessionController,
};
