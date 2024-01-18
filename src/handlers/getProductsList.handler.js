// getProducts.handler.js
const getProductsListController = require('../controllers/getProductsList.controller');

const getProductsList = async (req, res) => {
  try {
    const productList = await getProductsListController(req);

    if (!productList || productList.length === 0) {
      return res.status(404).json({
        error: 'No hay productos que listar',
      });
    }

    return res.status(200).json(productList);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la búsqueda de los productos',
      details: error.message,
    });
  }
};

module.exports = getProductsList;
