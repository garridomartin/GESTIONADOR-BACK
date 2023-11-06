const { MELIAccesToken } = require('../db');
const createProductController = require('./createProduct.controller');
const arrayToProductObject = require('./arrayToProductObject');
const axios = require('axios');
require('dotenv').config();
const { apiUrl } = process.env;

let scroll_id;
let idArr;
let arrayResponses = []; // Array para acumular las respuestas de la API
let response;

const getMELIproductsIDController = async (user_id) => {
  try {
    const acces_token = await MELIAccesToken.findOne({
      where: { UserId: user_id },
      order: [['createdAt', 'DESC']],
    });

    if (!acces_token) {
      throw new Error('No hay token asociado para ese usuario');
    }

    const token = acces_token.acces_token;
    const meliUser = acces_token.UserMeliID;

    response = await axios.get(
      `${apiUrl}/users/${meliUser}/items/search?search_type=scan`,
      {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      }
    );
    arrayResponses.push(...response.data.results);

    scroll_id = response.data.scroll_id;

    while (true) {
      if (!response.data.results || response.data.results.length === 0) {
        break;
      }
      response = await axios.get(
        `${apiUrl}/users/${meliUser}/items/search?search_type=scan&scroll_id=${scroll_id}`,
        {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        }
      );
      arrayResponses.push(...response.data.results);
    }

    idArr = await arrayToProductObject(arrayResponses);

    for (const idMeli of idArr) {
      await createProductController(idMeli);
    }

    return 'Proceso completado';
  } catch (error) {
    console.error('Error en getMELIproductsIDController:', error);
    throw error;
  }
};

module.exports = getMELIproductsIDController;
