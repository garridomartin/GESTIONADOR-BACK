const { User, Product, Sale, SoldProduct } = require('../db');
const sendEmailNotification = require('../utils/senderMail');
const fs = require('fs');
const path = require('path');
const templateCreation = require('../utils/templateCreation');

async function processSale(
  buyer_id,
  orderClientBackEnd,
  payment_id,
  status,
  merchant_order_id,
  pointOfPurchase
) {
  /*
  console.log('buyer_id: ', buyer_id);
  console.log('orderClientBackEnd: ', orderClientBackEnd);
  console.log('payment_id: ' + payment_id);
  console.log('status: ' + status);
  console.log('merchant_order_id: ' + merchant_order_id);
  console.log('pointOfPurchase:', pointOfPurchase);
*/
  const productsId = orderClientBackEnd
    .filter((item) => item.product_id !== undefined)
    .map((item) => item.product_id);

  const quantity = orderClientBackEnd
    .filter((item) => item.cantidad !== undefined)
    .map((item) => item.cantidad);

  const totalAmount = orderClientBackEnd.filter(
    (item) => item.totalAmount !== undefined
  );

  //console.log('linea 30 items:', productsId, totalAmount, buyer_id);

  try {
    try {
      user = await User.findByPk(buyer_id.buyer_id);
      //console.log('user:', user);
      if (!user) {
        throw new Error('Comprador no encontrado');
      }
    } catch (error) {
      throw new Error('Error al buscar al comprador en la base de datos');
    }

    let newSale;

    try {
      newSale = await Sale.create({
        buyer_id: buyer_id.buyer_id,
        totalAmount: totalAmount[0].totalAmount,
        payment_id: payment_id,
        status: status,
        merchant_order_id: merchant_order_id,
        seller_id: 2,
        pointOfPurchase: pointOfPurchase.pointOfPurchase,
      });
    } catch (error) {
      console.error('Error al crear la venta en la base de datos', error);
    }

    for (const item of orderClientBackEnd) {
      if (item.product_id !== undefined && item.cantidad !== undefined) {
        try {
          // Busca el producto en la base de datos
          const product = await Product.findByPk(item.product_id);
          if (!product) {
            console.error('Producto no encontrado:', item.product_id);
            continue; // Salta esta iteración y continúa con la siguiente
          }

          // Crea el registro en SoldProduct
          const soldProduct = await SoldProduct.create({
            sale_id: newSale.id,
            product_id: item.product_id,
            quantity: item.cantidad,
            seller_id: 2,
          });

          console.log('Antes de increment:', product.soldToDistribute);
          product.soldToDistribute += item.cantidad;
          await product.save();
          console.log('Después de increment:', product.soldToDistribute);
        } catch (error) {
          console.error(
            'Error al crear el registro de venta en la base de datos',
            error
          );
        }
      }
    }

    /*
    const filePathCompra = path.join(
      __dirname,
      '..',
      'views',
      'buyNotification.hbs'
    );
    const filePathVenta = path.join(
      __dirname,
      '..',
      'views',
      'saleNotification.hbs'
    );

    const templateCompra = fs.readFileSync(filePathCompra, 'utf-8');
    const templateVenta = fs.readFileSync(filePathVenta, 'utf-8');

    const compiledTemplateCompra = templateCreation(templateCompra, {
      sale_id: newSale.id,
      buyer_name: buyerName,
      totalAmount: newSale.totalAmount,
      payment_id: newSale.payment_id,
      status: newSale.status,
      sellerEmails: sellerEmails,
    });

    const compiledTemplateVenta = templateCreation(templateVenta, {
      sale_id: newSale.id,
      buyer_name: buyerName,
      totalAmount: newSale.totalAmount,
      sellerEmails: sellerEmails,
    });

    const uniqueSellerEmails = [...new Set(sellerEmails)];

    try {
      await sendEmailNotification(
        typeNotification,
        user.email,
        compiledTemplateCompra
      );
      console.log(uniqueSellerEmails);
      for (const sellerEmail of uniqueSellerEmails) {
        await sendEmailNotification(
          'vendedor', // Tipo de notificación para los vendedores
          sellerEmail, // Correo electrónico del vendedor
          compiledTemplateVenta // Puedes crear una plantilla diferente para los vendedores si es necesario
        );
      }
    } catch (error) {
      console.error(
        'Error al enviar el correo electrónico de notificación:',
        error
      );
    }
*/
    console.log('Venta registrada exitosamente');
  } catch (error) {
    console.error('Error al registrar la venta:', error);
  }
}

module.exports = processSale;
