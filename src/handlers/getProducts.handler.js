// getProducts.handler.js
const getProductsController = require('../controllers/getProducts.controller');

const getProducts = async (req, res) => {
  try {
    const { name, page, pageSize, filtro1, filtro2, orderByPrice, orden } =
      req.query;
    console.log(
      'name, page, pageSize, filtro1, filtro2, orderByPrice, orden:',
      name,
      page,
      pageSize,
      filtro1,
      filtro2,
      orderByPrice,
      orden
    );

    const productsFound = await getProductsController({
      name,
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

    console.log('productsFound', productsFound.productsFound[0]);

    return res.status(200).json(productsFound);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la búsqueda de los productos',
      details: error.message,
    });
  }
};

module.exports = getProducts;
