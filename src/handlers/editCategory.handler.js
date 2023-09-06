const editCategoryController = require('../controllers/editCategory.controller');

const editCategory = async (req, res) => {
  try {
    const { id, name } = req.body;
    //console.log('a ver que viene por body', req.body);

    const updatedCategory = await editCategoryController(id, name);

    // const editedProduct = await findProductById(updatedProduct.id);

    //console.log('editedProduct:', editedProduct);

    const response = {
      id: updatedCategory?.id,
      name: updatedCategory?.name,
    };
    //console.log('response:', response);
    return res.status(201).json(response);
  } catch (error) {
    res
      .status(400)
      .json({ error: 'Hubo un error en la solicitud', details: error.message });
  }
};

module.exports = editCategory;
