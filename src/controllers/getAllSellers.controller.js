// Importamos los modelos User y SoldProduct de nuestro módulo db.js
const { User, SoldProduct } = require('../db');

// Defino una función que busca en la tabla Users a traves del id
const getAllSellersController = (id) =>
  // Utilizo el método findAll() del modelo User para buscar todos los usuarios en la base de datos
  User.findAll({
    // Dentro de la opción "include", configuro la inclusión de SoldProduct en la búsqueda
    where: { isSeller: true },
    include: [
      {
        model: Sale,
        as: 'sales', // Indicamos que deseamos incluir las ventas del vendedor
        include: [
          {
            model: SoldProduct,
          },
        ],
      },
    ],
  });

module.exports = getAllSellersController;
