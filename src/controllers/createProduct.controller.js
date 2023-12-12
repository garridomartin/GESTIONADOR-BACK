const { Product, Category, Supplier, Description } = require('../db');
const firebaseUploader = require('../utils/firebaseUploader');

const createProductController = async (productData) => {
  try {
    const {
      name,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      quantityML,
      idMeli,
      longDescription,
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

    // Crear el producto
    const newProduct = await Product.create({
      name,
      files: uploadPicture,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      quantityML,
      idMeli,
    });

    // Asociar el producto con la categoría y el proveedor
    await newProduct.addCategory(findCategory);
    await newProduct.addSupplier(findSupplier);

    // Crear o actualizar la descripción asociada al producto
    const productDescription = await Description.findOne({
      where: { product_id: newProduct.id },
    });

    if (!productDescription) {
      // Si no hay descripción, la crea
      await Description.create({
        product_id: newProduct.id,
        longDescription,
      });
    } else {
      // Si ya existe la descripción, la actualiza
      productDescription.longDescription = longDescription;
      await productDescription.save();
    }

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
