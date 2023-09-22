const mercadopago = require('mercadopago');
require('dotenv').config();
const { MP_ACCES_TOKEN, URL_DEPLOY } = process.env;

mercadopago.configure({
  access_token: MP_ACCES_TOKEN,
});

function createPreference(description, price, quantity) {
  // console.log('linea 10 controller:', description, price, quantity);
  return new Promise((resolve, reject) => {
    let preference = {
      items: [
        {
          title: description,
          unit_price: Number(price),
          quantity: Number(quantity),
        },
      ],
      back_urls: {
        success: `${URL_DEPLOY}/feedback`,
        failure: `${URL_DEPLOY}/feedback`,
        pending: `${URL_DEPLOY}/feedback`,
      },
    };

    mercadopago.preferences
      .create(preference)
      .then(function (response) {
        //  resolve(response.body.init_point); //asi estaba en el tp final mandaba directo la pagina de pago
        resolve(response.body.id);
        //   console.log('linea 33  controller response mp preference:', response);
      })
      .catch(function (error) {
        reject(error);
        console.log(error);
      });
  });
}

module.exports = {
  createPreference,
};
