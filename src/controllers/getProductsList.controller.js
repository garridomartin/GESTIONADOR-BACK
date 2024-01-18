// getProducts.controller.js
const { Product } = require('../db');

const getProductsListController = async () => {
  try {
    const productsListFound = await Product.findAll({
      attributes: ['name'],
      order: [['name', 'ASC']],
    });

    const productNames = productsListFound.map((product) => product.name);

    return productNames;
  } catch (error) {
    console.error('Error en la búsqueda de productos:', error);
    throw new Error('Error en la búsqueda de productos', error);
  }
};

module.exports = getProductsListController;
