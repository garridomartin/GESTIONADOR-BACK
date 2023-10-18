const htmlContent = require('../utils/htmlContent');
const processSale = require('../controllers/saleController');
const processSaleFail = require('../controllers/saleFailController');
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
    const pointOfPurchase = orderClientBackEnd.find(
      (item) => item.pointOfPurchase !== undefined
    );
    const buyer_id = orderClientBackEnd.find(
      (item) => item.buyer_id !== undefined
    );

    if (status === 'approved') {
      const saleResult = await processSale(
        buyer_id,
        orderClientBackEnd,
        payment_id,
        status,
        merchant_order_id,
        pointOfPurchase
      );

      res.status(200).send(htmlContent);
    } else {
      const error = new Error('Payment not approved');
      await processSaleFail(
        buyer_id,
        orderClientBackEnd,
        payment_id,
        status,
        merchant_order_id,
        pointOfPurchase
      );

      // El estado no es "approved", no procesar la venta en soldProucts, si se anota la venta fallida en Sale
      res
        .status(400)
        //.send(htmlContent)
        .json({ error: 'Payment not approved', details: error.message });
    }
  } catch (error) {
    res.status(500).json({
      error: 'Error al registrar la venta linea 69',
      details: error.message,
    });
  }
}

module.exports = { sellByEcomm, getFeedbackMP };
