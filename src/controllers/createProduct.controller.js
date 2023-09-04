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
  supplier,
  category,
  files
) => {
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
  });

  await newProduct.save();

  const linkProductSupplier = (supplier, newProduct) =>
    newProduct.addSupplier(supplier);
  const linkProductCategory = (category, newProduct) =>
    newProduct.addCategory(category);

  await linkProductSupplier(findSupplier, newProduct);
  await linkProductCategory(findCategory, newProduct);

  return newProduct;
};

module.exports = createProductController;
