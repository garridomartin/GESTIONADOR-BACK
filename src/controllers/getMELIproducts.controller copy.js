//getMELIproducts.controller
const { MELIAccesToken } = require('../db');
const axios = require('axios');
require('dotenv').config();
const { apiUrl } = process.env;
const cleanArray = require('./cleanArray');

let items;
const getMELIproductsController = async (user_id) => {
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
      `${apiUrl}/users/${meliUser}/items/search`,
      {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      }
    );

    let itemsArry = response.data.results;

    items = itemsArry.join(',');
  } catch (error) {
    console.error('Error al obtener el token:', error);
    throw error;
  }
  try {
    const meliItems = await axios.get(`${apiUrl}/items?ids=${items}`, {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    });

    const itemsMeli = cleanArray(meliItems.data);

    return itemsMeli;
  } catch (error) {
    console.error('Error al obtener el token:', error);
    throw error;
  }
};

module.exports = getMELIproductsController;
