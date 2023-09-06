const { Category } = require('../db');

const findCategoryById = (id) => Category.findByPk(id, {});

module.exports = findCategoryById;
