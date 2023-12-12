const createProductController = require('../controllers/createProduct.controller');
const findProductById = require('../controllers/findProductById.controller');
const { validationResult } = require('express-validator');

const createProduct = async (req, res) => {
  try {
    const errors = validationResult(req.body);

    if (!errors.isEmpty()) throw new Error(errors.array());

    const {
      name,

      longDescription,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      supplier,
      category,
    } = req.body;

    const archivo = req.file;

    const productData = {
      name,

      longDescription,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      supplier,
      category,
      files: archivo,
    };

    const newProduct = await createProductController(productData);

    const info = await findProductById(newProduct.id);

    const response = {
      id: info?.id,
      name: info?.name,
      files: info?.files,

      longDescription: info?.longDescription,
      cost: info?.cost,
      priceML: info?.priceML,
      priceEComm: info?.priceEComm,
      priceLocal: info?.priceLocal,
      quantity: info?.quantity,
      supplier: info?.Suppliers[0].name,
      category: info?.Categories[0].name,
    };

    return res.status(201).json(response);
  } catch (error) {
    res
      .status(400)
      .json({ error: 'Hubo un error en la solicitud', details: error.message });
  }
};

module.exports = createProduct;

/*
const createProduct = async (req, res) => {
  try {
    const errors = validationResult(req.body);

    if (!errors.isEmpty()) throw new Error(errors.array());

    const {
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
    //  console.log('a ver que viene por body', req.body);
    const archivo = req.file;
    //  console.log('req.files:', req.file);
    const newProduct = await createProductController(
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
      archivo
    );

    const info = await findProductById(newProduct.id);

    //console.log('info:', info);

    const response = {
      id: info?.id,
      name: info?.name,
      files: info?.files,
      shortDescription: info?.shortDescription,
      longDescription: info?.longDescription,
      cost: info?.cost,
      priceML: info?.priceML,
      priceEComm: info?.priceEComm,
      priceLocal: info?.priceLocal,
      quantity: info?.quantity,
      supplier: info?.Suppliers[0].name,
      category: info?.Categories[0].name,
    };
    //console.log('response:', response);
    return res.status(201).json(response);
  } catch (error) {
    res
      .status(400)
      .json({ error: 'Hubo un error en la solicitud', details: error.message });
  }
};

module.exports = createProduct;
*/
