const { Supplier } = require('../db');

const findSupplierById = (id) => Supplier.findByPk(id);

module.exports = findSupplierById;
