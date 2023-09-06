const createCategoryController = require('../controllers/createCategory.controller');
const findCategoryById = require('../controllers/findCategoryById.controller');

const createCategory = async (req, res) => {
  try {
    const { name } = req.body;
    //console.log('a ver que viene por body', req.body);

    const newCategory = await createCategoryController(name);
    //console.log('newCategory:', newCategory);

    const result = await findCategoryById(newCategory.id);

    //console.log('newCategory:', newCategory);

    const response = {
      id: result?.id,
      name: result?.name,
    };
    //console.log('response:', response);
    return res.status(201).json(response);
  } catch (error) {
    // Captura el error del controlador y envía una respuesta JSON adecuada.
    if (error.message === 'Ya existe una categoría con ese nombre') {
      return res.status(400).json({
        error: 'Ya existe una categoría con ese nombre',
      });
    } else {
      console.log(error.message);
      return res.status(500).json({
        error: 'Error en el servidor',
      });
    }
  }
};

module.exports = createCategory;
