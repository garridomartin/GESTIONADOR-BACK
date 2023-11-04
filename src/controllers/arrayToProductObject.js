const { Product } = require('../db');

const arrayToProductObject = async (arr) => {
  const existingIdMeli = (await Product.findAll()).map(
    (product) => product.idMeli
  );

  const filteredArr = arr.filter((elem) => !existingIdMeli.includes(elem));

  const productObjects = filteredArr.map((elem) => {
    return {
      name: null,
      shortDescription: null,
      longDescription: null,
      cost: null,
      priceML: null,
      priceEComm: null,
      priceLocal: null,
      quantity: null,
      quantityML: null,
      idMeli: elem,
      supplier: null,
      category: null,
      files: null,
    };
  });

  return productObjects;
};

module.exports = arrayToProductObject;
