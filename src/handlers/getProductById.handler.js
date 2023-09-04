const findProductByIdController = require('../controllers/findProductById.controller');

const getProductById = async (req, res) => {
  try {
    const { id } = req.params;
    const productFound = await findProductByIdController(id);

    if (!productFound) {
      return res.status(404).json({
        error: 'No hay productos con el id solicitado',
      });
    }

    console.log('productFound:', productFound);
    return res.status(200).json(productFound);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la busqueda del producto',
      details: error.message,
    });
  }
};

module.exports = getProductById;
