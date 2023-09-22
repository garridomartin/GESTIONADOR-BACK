const { Product } = require('../db');

const quantityCheck = async (req, res, next) => {
  try {
    const orderClientBackEnd = req.body.orderClient;

    const productIds = orderClientBackEnd
      .filter((item) => item.product_id !== undefined)
      .map((item) => item.product_id);

    const products = await Product.findAll({
      where: {
        id: productIds,
      },
    });

    for (const product of products) {
      const orderItem = orderClientBackEnd.find(
        (item) => item.product_id === product.id
      );

      if (!orderItem) {
        throw new Error(
          `No se encontró un item de pedido correspondiente para el producto con ID ${product.id}`
        );
      }

      const cantidadSolicitada = orderItem.cantidad;
      const stock = product.stock;
      const soldToDistribute = product.soldToDistribute;

      if (cantidadSolicitada > stock - soldToDistribute) {
        throw new Error(
          `La cantidad solicitada para el producto con ID ${product.id} excede el stock disponible`
        );
      }
    }

    // Si todas las cantidades son válidas, pasa al siguiente middleware
    next();
  } catch (error) {
    console.error('Error en la comprobación de cantidad:', error);
    res.status(400).json({ error: 'Cantidad no válida' });
  }
};

module.exports = quantityCheck;
