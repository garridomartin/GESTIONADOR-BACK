// getMELIproducts.controller
//!SOLO UTILIZAR PARA OBTENER LOS COMENTARIOS DE LAS PUBLICACIONES EN MELI. DESCOMENTAR EL LLAMADO EN getMELIproducts.controller
const { Product } = require('../db');
const axios = require('axios');
require('dotenv').config();
const { apiUrl } = process.env;

const chunkArray = (array, chunkSize) => {
  const chunks = [];
  for (let i = 0; i < array.length; i += chunkSize) {
    chunks.push(array.slice(i, i + chunkSize));
  }
  return chunks;
};

const sleep = (milliseconds) =>
  new Promise((resolve) => setTimeout(resolve, milliseconds));

const getMELIproductsDescription = async (token, idMeliArry) => {
  console.log('INICIO PEDIDO DE DESCRIPCIONES A MELI CON IDs DE MELI');
  try {
    const batchSize = 10;
    for (let i = 0; i < idMeliArry.length; i += batchSize) {
      const batch = idMeliArry.slice(i, i + batchSize);

      for (const idMeli of batch) {
        try {
          const description = await axios.get(
            `${apiUrl}/items/${idMeli}/description`,
            {
              headers: {
                Authorization: `Bearer ${token}`,
              },
            }
          );

          const existingProduct = await Product.findOne({
            where: { idMeli },
          });
          if (!existingProduct) {
            throw new Error('Producto no encontrado');
          }

          existingProduct.longDescription = description.data.plain_text;
          await existingProduct.save();
        } catch (error) {
          if (error.response && error.response.status === 404) {
            // El ítem no tiene descripción, continúa con el siguiente
            console.warn(
              `Descripción no encontrada para el ítem con ID ${idMeli}`
            );
          } else if (
            error.response &&
            error.response.data &&
            error.response.data.error === 'not_found'
          ) {
            // El ítem no tiene descripción (manejo específico del error "not_found")
            console.warn(
              `Descripción no encontrada para el ítem con ID ${idMeli}`
            );
          } else {
            throw error; // Manejar otros errores
          }
        }
      }

      // Pausa de 5 segundos antes de continuar con el siguiente grupo de solicitudes
      if (i + batchSize < idMeliArry.length) {
        await sleep(5000); // Pausa de 5 segundos (5000 milisegundos)
      }
    }
  } catch (error) {
    console.error(
      'Error al copiar los elementos de MELI a la base de datos:',
      error
    );
    throw error;
  }

  console.log(
    'FINALIZO PEDIDO DE PRODUCTOS A MELI CON IDs DE MELI Y SU REGISTRO EN DB'
  );
  return 'PROCESO DE COPIA TERMINADO';
};

module.exports = getMELIproductsDescription;
