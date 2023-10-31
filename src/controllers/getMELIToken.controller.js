const axios = require('axios');
require('dotenv').config();
const { APP_ID, SECRET_KEY, REDIRECT_URI, apiUrl } = process.env;
/**
 * Obtiene un token de acceso de Mercado Libre utilizando el código de autorización del servidor.
 *
 * @param serverAuthorizationCode El código de autorización del servidor.
 * @returns Un objeto de tipo `TokenResponse` que contiene el token de acceso y otros datos útiles.
 */
const getToken = async (serverAuthorizationCode) => {
  console.log('access code:', serverAuthorizationCode);

  const data = {
    grant_type: 'authorization_code',
    client_id: APP_ID,
    client_secret: SECRET_KEY,
    code: serverAuthorizationCode,
    redirect_uri: REDIRECT_URI,
  };

  console.log('este es el request a meli:', data);

  try {
    const response = await axios.post(`${apiUrl}/oauth/token`, data, {
      headers: {
        accept: 'application/json',
        'content-type': 'application/x-www-form-urlencoded',
      },
    });
    const tokenData = response.data;
    console.log('Token Response:', tokenData);
    return tokenData;
  } catch (error) {
    console.error('Error al obtener el token:', error);
    throw error;
  }
};

module.exports = getToken;
