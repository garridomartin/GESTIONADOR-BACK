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
    if (filtro1 !== undefined && filtro1 !== '') {
      whereClause.filtroAnimal = filtro1;
    }

    if (filtro2 !== undefined && filtro2 !== '') {
      whereClause.filtroProducto = filtro2;
    }

    const opcionesConsulta = {
      where: whereClause,
      offset: startIndex,
      limit: pageSize,
      order: [
        // Aplicar ordenamiento según sea necesario
        [orderByPrice || 'name', orden || 'ASC'], // Usar 'name' como predeterminado si orderByPrice es undefined
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
