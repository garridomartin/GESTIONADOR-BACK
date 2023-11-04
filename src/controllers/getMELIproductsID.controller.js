//getMELIproducts.controller
const { MELIAccesToken } = require('../db');
const createProductController = require('./createProduct.controller');
const arrayToProductObject = require('./arrayToProductObject');
const axios = require('axios');
require('dotenv').config();
const { apiUrl } = process.env;
const cleanArray = require('./cleanArray');

let idMeliArr;
let scroll_id;
const getMELIproductsIDController = async (user_id) => {
  const acces_token = await MELIAccesToken.findOne({
    where: { UserId: user_id },
    order: [['createdAt', 'DESC']],
  });

  if (!acces_token) {
    throw new Error('No hay token asociado para ese usuario');
  }
  let token = acces_token.acces_token;
  let meliUser = acces_token.UserMeliID;

  try {
    const response = await axios.get(
      `${apiUrl}/users/${meliUser}/items/search?search_type=scan`,
      {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      }
    );

    idMeliArr = response.data.results;
    scroll_id = response.data.scroll_id;
    const idArr = await arrayToProductObject(idMeliArr);
    console.log('idArr:', idArr);
    for (const idMeli of idArr) {
      try {
        await createProductController(idMeli);
      } catch (error) {
        console.error(error.message);

        // Envía una respuesta de error al cliente
        return res.status(400).json({
          error: 'Hubo un error al crear el producto',
          details: error.message,
        });
      }
    }
  } catch (error) {
    console.error('Error al obtener el token:', error);
    throw error;
  } /*
  try {
    const meliItems = await axios.get(
      `${apiUrl}/users/${meliUser}/items/search?search_type=scan&scroll_id=${scroll_id}`,
      {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      }
    );

    const itemsMeli = cleanArray(meliItems.data);

    return itemsMeli;
  } catch (error) {
    console.error('Error al obtener el token:', error);
    throw error;
  }*/
};

module.exports = getMELIproductsIDController;
