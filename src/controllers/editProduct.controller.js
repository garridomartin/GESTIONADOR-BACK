const editProductController = require('../controllers/editProduct.controller');
const findUserById = require('../controllers/findUserById.controller');
const findProductById = require('../controllers/findProductById.controller');
const { validationResult } = require('express-validator');

const editProduct = async (req, res) => {
  try {
    const errors = validationResult(req.body);

    if (!errors.isEmpty()) throw new Error(errors.array());

    const {
      id,
      name,
      longDescription,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      supplier,
      category,
      isDeleted,
    } = req.body;

    const archivo = req.file;

    const data = {
      id,
      name,
      longDescription,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      supplier,
      category,
      isDeleted,
      files: archivo,
    };

    const updatedProduct = await editProductController(id, data);

    const editedProduct = await findProductById(updatedProduct.id);

    const response = {
      id: editedProduct?.id,
      name: editedProduct?.name,
      files: editedProduct?.files,
      shortDescription: editedProduct?.shortDescription,
      longDescription: editedProduct?.longDescription,
      cost: editedProduct?.cost,
      priceML: editedProduct?.priceML,
      priceEComm: editedProduct?.priceEComm,
      priceLocal: editedProduct?.priceLocal,
      quantity: editedProduct?.quantity,
      supplier: editedProduct?.Suppliers[0].name,
      category: editedProduct?.Categories[0].name,
      isDeleted: editedProduct?.isDeleted,
    };

    return res.status(201).json(response);
  } catch (error) {
    res
      .status(400)
      .json({ error: 'Hubo un error en la solicitud', details: error.message });
  }
};

module.exports = editProduct;
