// getMELIproducts.controller
const { MELIAccesToken, Product } = require('../db');
const axios = require('axios');
require('dotenv').config();
const { apiUrl } = process.env;
const cleanArray = require('./cleanArray');
const createProductController = require('./createProduct.Controller');

let items;
let token;
let meliUser;

const chunkArray = (array, chunkSize) => {
  const chunks = [];
  for (let i = 0; i < array.length; i += chunkSize) {
    chunks.push(array.slice(i, i + chunkSize));
  }
  return chunks;
};

const getMELIproductsController = async (user_id) => {
  try {
    const acces_token = await MELIAccesToken.findOne({
      where: { UserId: user_id },
      order: [['createdAt', 'DESC']],
    });

    if (!acces_token) {
      throw new Error('No hay token asociado para ese usuario');
    }
    token = acces_token.acces_token;
    meliUser = acces_token.UserMeliID;

    const idMeli = await Product.findAll({
      attributes: ['idMeli'],
    });

    const idMeliArry = idMeli
      .map((elem) => elem.idMeli)
      .filter((el) => el !== null);

    const itemChunks = chunkArray(idMeliArry, 20);

    const itemsPromises = itemChunks.map(async (chunk) => {
      try {
        const meliItems = await axios.get(
          `${apiUrl}/items?ids=${chunk.join(',')}`,
          {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          }
        );
        const result = cleanArray(meliItems.data);
        const meliProductToDB = createProductController(result);
        return meliProductToDB;
      } catch (error) {
        console.error('Error al obtener los elementos de MELI:', error);
        throw error;
      }
    });
  } catch (error) {
    console.error('Error al obtener el token:', error);
    throw error;
  }
};

module.exports = getMELIproductsController;
