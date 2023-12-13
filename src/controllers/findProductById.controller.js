const { Product, Supplier, Category, Description } = require('../db');

const findProductByIdController = (id) =>
  Product.findByPk(id, {
    include: [
      { model: Supplier, as: 'Suppliers' },
      { model: Category, as: 'Categories' },
      { model: Description, as: 'product', attributes: ['longDescription'] },
    ],
  });

module.exports = findProductByIdController;
