const createProductController = require('../controllers/createProduct.controller');
const { validationResult } = require('express-validator');

const createProduct = async (req, res) => {
  try {/*
    const admincheck = await findUserById(req.id);
    console.log('existUser:', admincheck);

    if (!admincheck)
      return res.status(404).json({ message: 'El usuario no existe' });

    if (!admincheck?.isAdmin)
      return res.status(404).json({
        message: 'No tenes la autoridad para acceder a esta informacion',
      });

    const errors = validationResult(req);

    if (!errors.isEmpty()) throw new Error(errors.throw());
*/
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
    console.log('a ver que viene por body', req.body);
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
     // req.file
    );

    const info = await findProductById(newProduct?.id);
   // const { supplierAdded } = info?.supplier;
   // const { categoryAdded } = info?.category;

    const response = {
      id: info?.id,
      name: info?.name,
      price: info?.price,
      description: info?.description,
      //files: info?.files,
      user_id: info?.user_id,
      
    };

    return res.status(200).json(response);
  } catch (error) {
    res.status(422).json(error);
  }
};

module.exports = createProduct;
