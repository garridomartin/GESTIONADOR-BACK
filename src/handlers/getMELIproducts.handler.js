//getMELIproducts.handler
const getMELIproductsController = require('../controllers/getMELIproducts.controller');
const getMELIproductsIDController = require('../controllers/getMELIproductsID.controller');

const getMELIproducts = async (req, res) => {
  try {
    const UserId = req.id;

    //const productFound = await getMELIproductsController(UserId);
    const productFound = await getMELIproductsIDController(UserId);
    if (!productFound) {
      return res.status(404).json({
        error: 'No hay productos en MercadoLibre con el id solicitado',
      });
    }

    console.log('productFound:', productFound);
    return res.status(200).json(productFound);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la busqueda de productos en MercadoLibre',
      details: error.message,
    });
  }
};

module.exports = getMELIproducts;
