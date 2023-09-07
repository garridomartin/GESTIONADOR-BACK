const getAllCategoriesController = require('../controllers/getAllCategories.controller');

const getAllCategories = async (req, res) => {
  try {
    const CategoriesFound = await getAllCategoriesController(req);

    if (!CategoriesFound) {
      return res.status(404).json({
        error: 'No hay Categorias cargadas base de datos',
      });
    }

    // console.log('CategoriesFound:', CategoriesFound);
    return res.status(200).json(CategoriesFound);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la busqueda de las categorias',
      details: error.message,
    });
  }
};

module.exports = getAllCategories;
