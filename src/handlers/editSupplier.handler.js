const editSupplierController = require('../controllers/editSupplier.controller');

const editSupplier = async (req, res) => {
  try {
    const { id, name, email, description, address, cellphone } = req.body;
    //console.log('a ver que viene por body', req.body);

    const updatedSupplier = await editSupplierController(
      id,
      name,
      email,
      description,
      address,
      cellphone
    );

    // const editedProduct = await findProductById(updatedProduct.id);

    const response = {
      id: updatedSupplier?.id,
      name: updatedSupplier?.name,
      email: updatedSupplier?.email,
      description: updatedSupplier?.description,
      address: updatedSupplier?.address,
      cellphone: updatedSupplier?.cellphone,
    };
    //console.log('response:', response);
    return res.status(201).json(response);
  } catch (error) {
    res
      .status(400)
      .json({ error: 'Hubo un error en la solicitud', details: error.message });
  }
};

module.exports = editSupplier;
