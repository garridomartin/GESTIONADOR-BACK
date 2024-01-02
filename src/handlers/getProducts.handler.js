// getProducts.handler.js
const getProductsController = require('../controllers/getProducts.controller');

const getProducts = async (req, res) => {
  try {
    const { page, pageSize } = req.query;

    const productsFound = await getProductsController({ page, pageSize });

    if (!productsFound) {
      return res.status(404).json({
        error: 'No hay productos en la base de datos',
      });
    }

    return res.status(200).json(productsFound);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la búsqueda de los productos',
      details: error.message,
    });
  }
};

module.exports = getProducts;
