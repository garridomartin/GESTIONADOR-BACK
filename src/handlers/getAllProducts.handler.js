const getAllProductsController = require('../controllers/getAllProducts.controller');
const findUserById = require('../controllers/findUserById.controller');

const getAllProducts = async (req, res) => {
  try {
    const productsFound = await getAllProductsController(req);

    if (!productsFound) {
      return res.status(404).json({
        error: 'No hay productos en la base de datos',
      });
    }

    // console.log('productsFound:', productsFound);
    return res.status(200).json(productsFound);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la busqueda de los productos',
      details: error.message,
    });
  }
};

module.exports = getAllProducts;
