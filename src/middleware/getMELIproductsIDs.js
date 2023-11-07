//getMELIproducts.handler
const getMELIproductsIDController = require('../controllers/getMELIproductsID.controller');

const getMELIproductsIDs = async (req, res, next) => {
  try {
    const UserId = req.id;
    const productIDsFound = await getMELIproductsIDController(UserId);
    if (!productIDsFound) {
      return res.status(404).json({
        error: 'No hay productos en MercadoLibre para obtener sus IDs',
      });
    }

    next();
  } catch (error) {
    const errorMessage = error.message || 'Error desconocido';
    return res.status(400).json({
      error: 'Hubo un error en la búsqueda de ids en MercadoLibre',
      details: errorMessage,
    });
  }
};

module.exports = getMELIproductsIDs;
