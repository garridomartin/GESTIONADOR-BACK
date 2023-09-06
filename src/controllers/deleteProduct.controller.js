const { Product } = require('../db');

const editProductController = async (id) => {
  try {
    // Busca el producto por su ID
    const updatedProduct = await Product.findByPk(id);

    if (!updatedProduct) {
      throw new Error('El producto no existe');
    }
    //console.log('updatedProduct:', updatedProduct);
    // Actualiza los campos del producto

    if (updatedProduct.isDeleted === false) {
      isDeleted = true;
    } else {
      isDeleted = false;
    }

    Object.assign(updatedProduct, {
      isDeleted,
    });

    await updatedProduct.save();

    return updatedProduct;
  } catch (error) {
    console.error(error.message);
    throw error;
  }
};

module.exports = editProductController;
