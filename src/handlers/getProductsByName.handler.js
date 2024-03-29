// getProductsByName.handler.js
const getProductsByNameController = require('../controllers/getProductsByName.controller');

const getProductsByName = async (req, res) => {
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

    const productsFound = await getProductsByNameController({
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

    return res.status(200).json(productsFound);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la búsqueda de los productos',
      details: error.message,
    });
  }
};

module.exports = getProductsByName;
