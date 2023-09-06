const deleteProductController = require('../controllers/deleteProduct.controller');
const findProductByIdController = require('../controllers/findProductById.controller');
const findProductById = require('../controllers/findProductById.controller');

const deleteProduct = async (req, res) => {
  try {
    const { id } = req.params;

    const productFound = await findProductByIdController(id);

    if (!productFound) {
      return res.status(404).json({
        error: 'No hay productos con el id solicitado',
      });
    }

    const updatedProduct = await deleteProductController(id);

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

module.exports = deleteProduct;
