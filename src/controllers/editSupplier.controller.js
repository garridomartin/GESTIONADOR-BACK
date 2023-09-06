const { Supplier } = require('../db');

const editSupplierController = async (
  id,
  name,
  email,
  description,
  address,
  cellphone
) => {
  try {
    // Busca la Categoria por su ID
    const updatedSupplier = await Supplier.findByPk(id);

    if (!updatedSupplier) {
      throw new Error('El Proveedor no existe');
    }
    //console.log('updatedProduct:', updatedProduct);
    // Actualiza los campos del producto

    Object.assign(updatedSupplier, {
      name,
      email,
      description,
      address,
      cellphone,
    });

    await updatedSupplier.save();

    return updatedSupplier;
  } catch (error) {
    console.error(error.message);
    throw error;
  }
};

module.exports = editSupplierController;
