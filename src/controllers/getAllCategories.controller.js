const { Category } = require('../db');

const getAllCategoriesController = () => Category.findAll();

module.exports = getAllCategoriesController;
