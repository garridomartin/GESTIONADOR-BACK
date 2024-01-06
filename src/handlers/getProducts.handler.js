// getProducts.handler.js
const getProductsController = require('../controllers/getProducts.controller');

const getProducts = async (req, res) => {
  try {
    const { page, pageSize, filtro1, filtro2, orderByPrice, orden } = req.query;
    console.log(
      'page, pageSize, filtro1, filtro2, orderByPrice, orden:',
      page,
      pageSize,
      filtro1,
      filtro2,
      orderByPrice,
      orden
    );
    const productsFound = await getProductsController({
      page,
      pageSize,
      filtro1,
      filtro2,
      orderByPrice,
      orden,
    });

    if (!productsFound || productsFound.length === 0) {
      return res.status(404).json({
        error: 'No hay productos que coincidan con los criterios de búsqueda',
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
