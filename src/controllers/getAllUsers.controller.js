// Importamos los modelos User y SoldProduct de nuestro módulo db.js
const { User, SoldProduct } = require('../db');

// Defino una función que busca en la tabla Users a traves del id
const getAllUsers = (id) =>
  // Utilizo el método findAll() del modelo User para buscar todos los usuarios en la base de datos
  User.findAll({
    // Dentro de la opción "include", configuro la inclusión de SoldProduct en la búsqueda
    include: [
      {
        model: SoldProduct, // Indicamos que queremos incluir el modelo SoldProduct en la búsqueda
      },
    ],
  });

module.exports = getAllUsers;
