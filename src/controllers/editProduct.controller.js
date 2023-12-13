const { Product, Category, Supplier, Description } = require('../db');
const firebaseUploader = require('../utils/firebaseUploader');

const editProductController = async (
  id,
  data // Object que contiene los datos a actualizar
) => {
  try {
    let uploadPicture;
    if (data.files && data.files.originalname) {
      uploadPicture = await firebaseUploader(data.files);
    }

    // Busca el producto por su ID
    const updatedProduct = await Product.findByPk(id);

    if (!updatedProduct) {
      throw new Error('El producto no existe');
    }

    // Actualiza los campos del producto si están presentes en los datos
    const fieldsToUpdate = [
      'name',
      'longDescription',
      'cost',
      'priceML',
      'priceEComm',
      'priceLocal',
      'quantity',
      'isDeleted',
    ];

    fieldsToUpdate.forEach((field) => {
      if (data[field] !== undefined) {
        updatedProduct[field] = data[field];
      }
    });

    // Actualiza la imagen si está presente en los datos
    if (uploadPicture) {
      updatedProduct.files = uploadPicture;
    }

    // Guarda el producto actualizado
    await updatedProduct.save();

    // Busca la descripción asociada al producto
    const productDescription = await Description.findOne({
      where: { product_id: id },
    });

    // Actualiza la descripción si está presente en los datos
    if (data.longDescription !== undefined) {
      if (!productDescription) {
        // Si no hay descripción, la crea
        await Description.create({
          product_id: id,
          longDescription: data.longDescription,
        });
      } else {
        // Si ya existe la descripción, la actualiza
        productDescription.longDescription = data.longDescription;
        await productDescription.save();
      }
    }

    // Busca la categoría y el proveedor asociados al producto
    const findCategory = await Category.findAll({
      where: { name: data.category },
    });

    const findSupplier = await Supplier.findAll({
      where: { name: data.supplier },
    });

    // Asocia el producto con la categoría y el proveedor
    if (findCategory.length > 0) {
      await updatedProduct.setCategories(findCategory);
    }

    if (findSupplier.length > 0) {
      await updatedProduct.setSuppliers(findSupplier);
    }

    return updatedProduct;
  } catch (error) {
    console.error(error.message);
    throw error;
  }
};

module.exports = editProductController;
