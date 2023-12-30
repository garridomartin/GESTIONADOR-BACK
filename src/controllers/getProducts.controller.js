// getProducts.controller.js
const { Product, Supplier, Category, sequelize } = require('../db');
const { Op } = require('sequelize');

const getProductsController = async ({ page, pageSize }) => {
  try {
    const startIndex = (page - 1) * pageSize;
    const endIndex = page * pageSize;

    const productsFound = await Product.findAll({
      where: {
        isDeleted: false,
        quantity: {
          [Op.gt]: 0, // Stock mayor que cero
        },
      },
      include: [
        { model: Supplier, as: 'Suppliers' },
        { model: Category, as: 'Categories' },
      ],
      offset: startIndex,
      limit: pageSize,
    });

    return productsFound;
  } catch (error) {
    throw new Error('Error en la búsqueda de productos');
  }
};

module.exports = getProductsController;
