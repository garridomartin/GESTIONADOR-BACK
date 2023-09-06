const { Category } = require('../db');

const editCategoryController = async (id, name) => {
  try {
    // Busca la Categoria por su ID
    const updatedCategory = await Category.findByPk(id);

    if (!updatedCategory) {
      throw new Error('La categoria no existe');
    }
    //console.log('updatedProduct:', updatedProduct);
    // Actualiza los campos del producto

    Object.assign(updatedCategory, {
      name,
    });

    await updatedCategory.save();

    return updatedCategory;
  } catch (error) {
    console.error(error.message);
    throw error;
  }
};

module.exports = editCategoryController;
