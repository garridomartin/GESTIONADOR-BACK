// getDescription.controller.js
const { Description } = require('../db');
const { Op } = require('sequelize');
const getDescriptionController = async (id) => {
  try {
    // Realizar la consulta a la base de datos usando Sequelize
    const descriptionFound = await Description.findAll({
      where: { product_id: id },
    });

    return descriptionFound;
  } catch (error) {
    console.error('Error en la búsqueda de productos:', error);
    throw new Error('Error en la búsqueda de productos', error);
  }
};

module.exports = getDescriptionController;
