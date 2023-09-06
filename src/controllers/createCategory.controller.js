const { Category } = require('../db');

const createCategoryController = async (name) => {
  try {
    // console.log('name:', name);
    const findCategory = await Category.findAll({
      where: { name: name },
    });

    if (findCategory.length > 0) {
      throw new Error('Ya existe una categoría con ese nombre');
    }

    const newCategory = await Category.create({
      name: name,
    });

    await newCategory.save();

    return newCategory;
  } catch (error) {
    throw error;
  }
};

module.exports = createCategoryController;
