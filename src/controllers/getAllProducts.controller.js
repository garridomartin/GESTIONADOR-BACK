const { Product, Supplier, Category } = require('../db');

const getAllProductsController = () =>
  Product.findAll({
    include: [
      { model: Supplier, as: 'Suppliers' },
      { model: Category, as: 'Categories' },
    ],
  });

module.exports = getAllProductsController;
