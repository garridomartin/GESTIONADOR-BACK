const getMELIproductsController = require('../controllers/findProductById.controller');

const getMELIproducts = async (req, res) => {
  try {
    const { id } = req.params;
    const productFound = await getMELIproductsController(id);

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
