const { Product } = require('../db');

const amountCheck = async (req, res, next) => {
  try {
    const orderClientBackEnd = req.body.orderClient;
    const puntoDeCompra = orderClientBackEnd.find(
      (item) => item.pointOfPurchase !== undefined
    );

    const pointOfPurchase = puntoDeCompra
      ? puntoDeCompra.pointOfPurchase
      : undefined;

    const totalAmountFromOrder = parseFloat(
      orderClientBackEnd.find((item) => item.totalAmount !== undefined)
        .totalAmount
    );

    const productIds = orderClientBackEnd
      .filter((item) => item.product_id !== undefined)
      .map((item) => item.product_id);

    const products = await Product.findAll({
      where: {
        id: productIds,
      },
    });

    const prices = products.map((product) => {
      return {
        id: product.id,
        priceML: product.priceML,
        priceEComm: product.priceEComm,
        priceLocal: product.priceLocal,
      };
    });

    let totalML = 0;
    let totalEcomm = 0;
    let totalLocal = 0;

    for (const product of products) {
      const orderItem = orderClientBackEnd.find(
        (item) => item.product_id === product.id
      );

      if (!orderItem) {
        throw new Error(
          `No se encontró un item de pedido correspondiente para el producto con ID ${product.id}`
        );
      }

      const cantidades = orderClientBackEnd
        .filter((item) => item.cantidad !== undefined)
        .map((item) => item.cantidad);

      let price;
      if (pointOfPurchase === 'ML') {
        price = product.priceML;
      } else if (pointOfPurchase === 'Ecomm') {
        price = product.priceEComm;
      } else if (pointOfPurchase === 'Local') {
        price = product.priceLocal;
      } else {
        throw new Error(
          `Punto de venta no válido para el producto con ID ${product.id}`
        );
      }

      if (price) {
        if (pointOfPurchase === 'ML') {
          totalML += orderItem.cantidad * price;
        } else if (pointOfPurchase === 'Ecomm') {
          totalEcomm += orderItem.cantidad * price;
        } else if (pointOfPurchase === 'Local') {
          totalLocal += orderItem.cantidad * price;
        }
      }
    }

    const totalCalculated = totalML + totalEcomm + totalLocal;

    console.log(
      `Total en ML: ${totalML}, Total en Ecomm: ${totalEcomm}, Total en Local: ${totalLocal}, DEBE IGUALRSE SEGUN DB ${totalCalculated} `
    );

    if (totalAmountFromOrder !== totalCalculated) {
      throw new Error(
        `El TotalAmount proporcionado (${totalAmountFromOrder}) no coincide con el total calculado (${totalCalculated})`
      );
    }
    next();
  } catch (error) {
    console.error('Error al procesar la venta:', error);
  }
};

module.exports = amountCheck;
