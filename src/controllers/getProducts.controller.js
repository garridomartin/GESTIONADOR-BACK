// getProducts.controller.js
const { Product, Supplier, Category, sequelize } = require('../db');
const { Op } = require('sequelize');
const getProductsController = async ({
  page,
  pageSize,
  filtro1,
  filtro2,
  orderByPrice,
  orden,
}) => {
  try {
    const startIndex = (page - 1) * pageSize;
    const endIndex = page * pageSize;

    // Construir objeto de opciones para la consulta a la base de datos
    const whereClause = {
      isDeleted: false,
      quantity: {
        [Op.gt]: 0,
      },
    };

    // Aplicar filtros según sea necesario
    if (filtro1 !== undefined) {
      whereClause.campo1 = filtro1;
    }

    if (filtro2 !== undefined) {
      whereClause.campo2 = filtro2;
    }

    const opcionesConsulta = {
      where: whereClause,
      offset: startIndex,
      limit: pageSize,
      order: [
        // Aplicar ordenamiento según sea necesario
        [orderByPrice || 'name', orden || 'ASC'], // Usar 'name' como predeterminado si ordenarPor es undefined
      ],
    };

    // Realizar la consulta a la base de datos usando Sequelize
    const productsFound = await Product.findAll(opcionesConsulta);

    return productsFound;
  } catch (error) {
    console.error('Error en la búsqueda de productos:', error);
    throw new Error('Error en la búsqueda de productos', error);
  }
};

module.exports = getProductsController;
