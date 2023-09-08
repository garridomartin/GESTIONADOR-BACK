const editProductController = require('../controllers/editProduct.controller');
const findUserById = require('../controllers/findUserById.controller');
const findProductById = require('../controllers/findProductById.controller');
const { validationResult } = require('express-validator');

const batchNewCost = async (req, res) => {
  try {
    const errors = validationResult(req.body);

    if (!errors.isEmpty()) throw new Error(errors.array());

    const {
      id,
      name,
      shortDescription,
      longDescription,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      supplier,
      category,
    } = req.body;
    //console.log('a ver que viene por body', req.body);
    const archivo = req.file;
    const isDeleted = req.body.isDeleted;
    //console.log('req.body.isDeleted:', req.body.isDeleted);
    //  console.log('req.files:', req.file);
    // console.log('req.body:', req.body);
    // console.log('deleted;', isDeleted);
    const updatedProduct = await batchNewCostController(
      id,
      name,
      shortDescription,
      longDescription,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      supplier,
      category,
      isDeleted,
      archivo
    );

    const editedProduct = await findProductById(updatedProduct.id);

    //console.log('editedProduct:', editedProduct);

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
    //console.log('response:', response);
    return res.status(201).json(response);
  } catch (error) {
    res
      .status(400)
      .json({ error: 'Hubo un error en la solicitud', details: error.message });
  }
};

module.exports = batchNewCost;
