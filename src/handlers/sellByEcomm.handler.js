const { User, Sale, SoldProduct, Product } = require('../db');
const htmlContent = require('../utils/htmlContent');
const { processSale } = require('../controllers/saleController');
const mercadopago = require('../controllers/mercadopago.controller');

let orderClientBackEnd = [];

async function sellByEcomm(req, res) {
  try {
    const selledItems = req.body.orderClient;
    orderClientBackEnd = [...selledItems, { buyer_id: req.id }];

    const body = req.body.orderData;
    totalAmount = body.amount;

    const preferenceId = await mercadopago.createPreference(
      'PRODUCTOS VARIOS',
      body.amount,
      body.quantity
    );

    res.json({ id: preferenceId });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Failed to create preference to MP' });
  }
}

async function getFeedbackMP(req, res) {
  try {
    const { query } = req;
    const { payment_id, status, merchant_order_id } = query;
    const puntoDeCompra = orderClientBackEnd.find(
      (item) => item.pointOfPurchase !== undefined
    );
    const typeNotification = puntoDeCompra
      ? puntoDeCompra.pointOfPurchase
      : undefined;

    await processSale(
      orderClientBackEnd,
      payment_id,
      status,
      merchant_order_id,
      totalAmount,
      typeNotification
    );
    res.status(200).send(htmlContent);
  } catch (error) {
    res.status(500).json({ error: 'Error al registrar la venta linea 37' });
  }
}

module.exports = { sellByEcomm, getFeedbackMP };
