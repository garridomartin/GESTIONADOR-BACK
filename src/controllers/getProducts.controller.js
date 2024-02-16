// getProducts.controller.js
const { Product, Supplier, Category, sequelize } = require('../db');
const { Op } = require('sequelize');
const getProductsController = async ({
  name,
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

    // Lógica para obtener productos de la base de datos
    const whereClause = {
      isDeleted: false,
      quantity: {
        [Op.gt]: 0,
      },
    };

    if (filtro1 !== undefined && filtro1 !== '') {
      whereClause.filtroAnimal = filtro1;
    }

    if (filtro2 !== undefined && filtro2 !== '') {
      whereClause.filtroProducto = filtro2;
    }

    if (name !== undefined && name !== '') {
      whereClause.name = {
        [Op.iLike]: `%${name}%`,
      };
    }

    const options = {
      where: whereClause,
      offset: startIndex,
      limit: pageSize + 1, // Consultar un producto adicional
      order: [[orderByPrice || 'name', orden || 'ASC']],
    };

    // Realizar la consulta a la base de datos usando Sequelize
    const productsFound = await Product.findAll(options);

    // Verificar si hay más productos disponibles después de la página actual
    const hasNextPage = productsFound.length > pageSize;

    // Eliminar el producto adicional de la respuesta
    const productsForPage = hasNextPage
      ? productsFound.slice(0, pageSize)
      : productsFound;

    return { productsFound: productsForPage, hasNextPage };
  } catch (error) {
    console.error('Error en la búsqueda de productos:', error);
    throw new Error('Error en la búsqueda de productos', error);
  }
};

module.exports = getProductsController;
