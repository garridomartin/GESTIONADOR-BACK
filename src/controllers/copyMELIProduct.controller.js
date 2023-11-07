const { Product } = require('../db');

const updateMELIProductController = async (productData) => {
  try {
    for (const product of productData) {
      const { name, priceML, quantity, quantityML, idMeli, files, pictures } =
        product;

      // Buscar el producto existente en la base de datos por su idMeli
      const existingProduct = await Product.findOne({
        where: { idMeli: idMeli },
      });

      if (!existingProduct) {
        throw new Error('Producto no encontrado');
      }

      // Actualizar los campos del producto existente con los nuevos valores
      existingProduct.name = name;
      existingProduct.priceML = priceML;
      existingProduct.quantity = quantity;
      existingProduct.quantityML = quantityML;
      existingProduct.files = files;

      // Guardar los cambios en la base de datos
      await existingProduct.save();
    }
  } catch (error) {
    console.log(error.message);
    throw error;
  }
};

module.exports = updateMELIProductController;
