const { Product, Supplier, Category, sequelize } = require('../db');
const { Op } = require('sequelize');

const getProductsController = () =>
  Product.findAll({
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
  });

module.exports = getProductsController;
