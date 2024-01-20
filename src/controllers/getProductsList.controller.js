// getProducts.controller.js
const { Op } = require('sequelize');
const { Product } = require('../db');

const getProductsListController = async () => {
  try {
    const productsListFound = await Product.findAll({
      attributes: ['name'],
      order: [['name', 'ASC']],
      where: {
        quantity: {
          [Op.gt]: 0,
        },
      },
    });

    const productNames = productsListFound.map((product) => product.name);

    return productNames;
  } catch (error) {
    console.error('Error en la búsqueda de productos:', error);
    throw new Error('Error en la búsqueda de productos', error);
  }
};

module.exports = getProductsListController;
