const { Product, Supplier, Category } = require('../db');

const findProductById = (id) =>
  Product.findByPk(id, {
    include: [
      { model: Supplier, as: 'Suppliers' },
      { model: Category, as: 'Categories' },
    ],
  });

module.exports = findProductById;
