//getMELIproducts.handler
const getMELIproductsController = require('../controllers/getMELIproducts.controller');

const getMELIproducts = async (req, res) => {
  try {
    const UserId = req.id;

    const productsFound = await getMELIproductsController(UserId);

    if (!productsFound) {
      return res.status(404).json({
        error: 'No hay productos en MercadoLibre con el id solicitado',
      });
    }

    console.log('productFound:', productsFound);
    return res.status(200).json(productsFound);
  } catch (error) {
    const errorMessage = error.message || 'Error desconocido';
    return res.status(400).json({
      error: 'Hubo un error en la búsqueda de productos en MercadoLibre',
      details: errorMessage,
    });
  }
};

module.exports = getMELIproducts;
