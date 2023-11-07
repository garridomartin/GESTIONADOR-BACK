// getMELIproducts.controller
const { MELIAccesToken, Product } = require('../db');
const axios = require('axios');
require('dotenv').config();
const { apiUrl } = process.env;
const cleanArray = require('./cleanArray');
const copyMELIProductController = require('./copyMELIProduct.Controller');

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
      let params = chunk.join(',');

      try {
        const meliItems = await axios.get(`${apiUrl}/items?ids=${params}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });

        const result = cleanArray(meliItems.data);
        try {
          await copyMELIProductController(result);
        } catch (error) {
          console.error(
            'Error al copiar los elementos de MELI a la base de datos:',
            error
          );
        }
      } catch (error) {
        console.error('Error al obtener los elementos de MELI:', error);
      }
    });

    return 'PROCESO DE COPIA TERMINADO';
  } catch (error) {
    console.error('Error al obtener el token:', error);
    throw error;
  }
};

module.exports = getMELIproductsController;
