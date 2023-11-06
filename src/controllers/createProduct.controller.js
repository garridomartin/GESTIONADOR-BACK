const { Product, Category, Supplier } = require('../db');
const firebaseUploader = require('../utils/firebaseUploader');

const createProductController = async (productData) => {
  try {
    const {
      name,
      shortDescription,
      longDescription,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      quantityML,
      idMeli,
      supplier,
      category,
      files,
    } = productData;

    let uploadPicture;

    if (files) {
      uploadPicture = await firebaseUploader(files);
    }

    const findCategory = await Category.findAll({
      where: { name: category },
    });
    const findSupplier = await Supplier.findAll({
      where: { name: supplier },
    });
    const newProduct = await Product.create({
      name,
      shortDescription,
      files: uploadPicture,
      longDescription,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      quantityML,
      idMeli,
    });

    await newProduct.save();

    // Asociar el producto con la categoría y el proveedor
    await newProduct.addCategory(findCategory);
    await newProduct.addSupplier(findSupplier);

    if (!files) {
      console.log(
        'No se cargaron fotos al producto porque no se pasó el archivo.'
      );
    }

    return newProduct;
  } catch (error) {
    console.log(error.message);
    throw error;
  }
};

module.exports = createProductController;

/*
const { Product, Category, Supplier } = require('../db');
const firebaseUploader = require('../utils/firebaseUploader');

const createProductController = async (
  name,
  shortDescription,
  longDescription,
  cost,
  priceML,
  priceEComm,
  priceLocal,
  quantity,
  quantityML,
  idMeli,
  supplier,
  category,
  files
) => {
  try {
    const uploadPicture = await firebaseUploader(files);
    const findCategory = await Category.findAll({
      where: { name: category },
    });
    const findSupplier = await Supplier.findAll({
      where: { name: supplier },
    });
    const newProduct = await Product.create({
      name: name,
      shortDescription: shortDescription,
      files: uploadPicture,
      longDescription: longDescription,
      cost: cost,
      priceML: priceML,
      priceEComm: priceEComm,
      priceLocal: priceLocal,
      quantity: quantity,
      quantityML: quantityML,
      idMeli: idMeli,
    });

    await newProduct.save();

    // Asocio el producto con la categoría y el proveedor
    await newProduct.addCategory(findCategory);
    await newProduct.addSupplier(findSupplier);

    return newProduct;
  } catch (error) {
    console.log(error.message);
  }
};

module.exports = createProductController;
*/
