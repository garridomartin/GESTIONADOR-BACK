const { Supplier } = require('../db');

const createSupplierController = async (
  name,
  email,
  description,
  address,
  cellphone
) => {
  try {
    //console.log('name:', name);
    const findSupplier = await Supplier.findAll({
      where: { name: name },
    });

    if (findSupplier.length > 0) {
      throw new Error('Ya existe un Proveedor con ese nombre');
    }

    const newSupplier = await Supplier.create({
      name: name,
      email: email,
      description: description,
      address: address,
      cellphone: cellphone,
    });

    await newSupplier.save();

    return newSupplier;
  } catch (error) {
    throw error;
  }
};

module.exports = createSupplierController;
