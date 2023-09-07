const { Supplier, Category } = require('../db');

const getAllSuppliersController = () =>
  Supplier.findAll({
    include: [{ model: Category, as: 'Categories' }],
  });

module.exports = getAllSuppliersController;
