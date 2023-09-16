const htmlContent = require('../utils/htmlContent');
const { processSale } = require('../controllers/saleController');
const mercadopago = require('mercadopago');

const typeNotification = 'compra/venta';
let datosBody = [];

function sellByEcomm(req, res) {
  console.log(`prueba 1 linea 7`);
  datosBody = req.body.map((elem) => {
    return { ...elem, buyer_id: req.id };
  });

  const body = req.body[0];
  mercadopago
    .createPreference('SERVICIOS VARIOS', body.totalAmount, body.quantity)
    .then((preferenceId) => {
      res.json({ id: preferenceId });
    })
    .catch((error) => {
      res.status(500).json({ error: 'Failed to create preference' });
    });
}

async function getFeedback(req, res) {
  try {
    const { query } = req;
    const { payment_id, status, merchant_order_id } = query;
    const items = datosBody;

    await processSale(
      items,
      payment_id,
      status,
      merchant_order_id,
      typeNotification
    );

    res.status(200).send(htmlContent);
  } catch (error) {
    res.status(500).json({ error: 'Error al registrar la venta linea 37' });
  }
}

module.exports = sellByEcomm;
