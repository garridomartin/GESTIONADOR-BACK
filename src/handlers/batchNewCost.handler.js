const batchNewCostController = require('../controllers/batchNewCost.controller');
const { validationResult } = require('express-validator');

const batchNewCost = async (req, res) => {
  try {
    console.log('Iniciando batchNewCost handler...');
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
      console.log('Errores de validación:', errors.array());
      return res.status(400).json({ errors: errors.array() });
    }

    const csvData = req.file.buffer.toString('utf8');
    // console.log('Datos CSV recibidos:', csvData);

    // Procesa el contenido CSV
    const updatedProduct = await batchNewCostController(csvData);

    console.log('Resultado de batchNewCostController:', updatedProduct);

    if (updatedProduct.error) {
      console.error('Error en batchNewCost controller:', updatedProduct.error);
      return res.status(500).json({ error: 'Error interno del servidor.' });
    }

    console.log('Proceso de actualización finalizado.');
    res.status(200).json({ message: 'Proceso de actualización finalizado.' });
  } catch (error) {
    console.error('Error en batchNewCost handler:', error);
    res.status(500).json({ error: 'Error interno del servidor.' });
  }
};

module.exports = batchNewCost;
