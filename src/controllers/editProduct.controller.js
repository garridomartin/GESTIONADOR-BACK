const { Product, Category, Supplier } = require('../db');
const firebaseUploader = require('../utils/firebaseUploader');

const editProductController = async (
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
  files
) => {
  try {
    let uploadPicture;
    console.log('isDeleted:', isDeleted);
    if (files && files.originalname) {
      uploadPicture = await firebaseUploader(files);
    }
    // Busca el producto por su ID
    const updatedProduct = await Product.findByPk(id);

    if (!updatedProduct) {
      throw new Error('El producto no existe');
    }
    //console.log('updatedProduct:', updatedProduct);
    // Actualiza los campos del producto

    Object.assign(updatedProduct, {
      name,
      shortDescription,
      files: uploadPicture,
      longDescription,
      cost,
      priceML,
      priceEComm,
      priceLocal,
      quantity,
      isDeleted,
    });
    // Actualiza los campos del producto
    /*
    updatedProduct.name = name;
    updatedProduct.shortDescription = shortDescription;
    updatedProduct.files = uploadPicture;
    updatedProduct.longDescription = longDescription;
    updatedProduct.cost = cost;
    updatedProduct.priceML = priceML;
    updatedProduct.priceEComm = priceEComm;
    updatedProduct.priceLocal = priceLocal;
    updatedProduct.quantity = quantity;
*/
    await updatedProduct.save();

    const findCategory = await Category.findAll({
      where: { name: category },
    });

    const findSupplier = await Supplier.findAll({
      where: { name: supplier },
    });

    // Asocia el producto con la categoría y el proveedor
    await updatedProduct.addCategory(findCategory);
    await updatedProduct.addSupplier(findSupplier);

    return updatedProduct;
  } catch (error) {
    console.error(error.message);
    throw error;
  }
};

module.exports = editProductController;
