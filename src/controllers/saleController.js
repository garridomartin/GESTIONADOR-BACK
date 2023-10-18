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
  const totalAmount = orderClientBackEnd.filter(
    (item) => item.totalAmount !== undefined
  );

  let name;
  let productos = [];
  let typeNotification = pointOfPurchase.pointOfPurchase;
  let user;
  let numeroDeTransaccion = merchant_order_id;
  //Variables para completar el mail↑↑↑↑
  //console.log('linea 30 items:', productsId, totalAmount, buyer_id);
  try {
    try {
      user = await User.findByPk(buyer_id.buyer_id);
      //console.log('user:', user);
      if (!user) {
        throw new Error('Comprador no encontrado');
      }
      name = user.name;
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

          const priceMapping = {
            ML: 'priceML',
            Ecomm: 'priceEComm',
            Local: 'priceLocal',
          };

          const precioKey = priceMapping[pointOfPurchase.pointOfPurchase];

          const productObject = {
            name: product.name,
            cantidad: item.cantidad,
            precio: product[precioKey],
          };

          // Agrega el objeto al array
          productos.push(productObject);

          // Crea el registro en SoldProduct
          const soldProduct = await SoldProduct.create({
            sale_id: newSale.id,
            product_id: item.product_id,
            quantity: item.cantidad,
            seller_id: 2,
          });

          // console.log('Antes de increment:', product.soldToDistribute);
          product.soldToDistribute += item.cantidad;
          await product.save();
          //  console.log('Después de increment:', product.soldToDistribute);
        } catch (error) {
          console.error(
            'Error al crear el registro de venta en la base de datos',
            error
          );
        }
      }
    }

    const filePathCompra = path.join(
      __dirname,
      '..',
      'views',
      'compraPorEcommerce.hbs'
    );

    const templateCompra = fs.readFileSync(filePathCompra, 'utf-8');
    const compiledTemplateCompra = templateCreation(templateCompra, {
      sale_id: newSale.id,
      buyer_name: name,
      totalAmount: newSale.totalAmount,
      payment_id: newSale.payment_id,
      status: newSale.status,
      productos: productos,
    });

    try {
      const emailResult = await sendEmailNotification(
        typeNotification,
        user.email,
        compiledTemplateCompra,
        numeroDeTransaccion
      );
      return {
        success: true,
        message: 'Mensaje de venta enviado con éxito',
        emailResult: emailResult,
      };
    } catch (error) {
      console.error(
        'Error al enviar el correo electrónico de notificación:',
        error
      );
    }

    console.log('Venta registrada exitosamente');
  } catch (error) {
    console.error('Error al registrar la venta:', error);
  }
}

module.exports = processSale;
