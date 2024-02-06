// getDescription.handler.js
const getDescriptionController = require('../controllers/getDescription.controller');

const getDescription = async (req, res) => {
  try {
    const { id } = req.query;
    console.log('id:', id);

    const descriptionFound = await getDescriptionController(id);

    if (!descriptionFound) {
      return res.status(404).json({
        error:
          'No hay descripcion de producto que coincidan con los criterios de búsqueda',
      });
    }

    return res.status(200).json(descriptionFound);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la búsqueda de la descripcion',
      details: error.message,
    });
  }
};

module.exports = getDescription;
