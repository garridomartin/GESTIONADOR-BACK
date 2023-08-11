const nodemailer = require('nodemailer');
const { EMAIL_HOST, EMAIL_PORT, EMAIL_USER, EMAIL_PASS } = process.env;

const sendEmailNotification = async (
  typeNotification,
  emailToSend,
  compiledTemplate
) => {
  try {
    const config = {
      host: EMAIL_HOST,
      port: EMAIL_PORT,
      auth: {
        user: EMAIL_USER,
        pass: EMAIL_PASS,
      },
    };

    let message = {};

    if (typeNotification === 'userCreation') {
      //console.log(emailToSend);
      message = {
        from: EMAIL_USER,
        to: emailToSend,
        subject: 'Usuario Creado en APP FACTURACION',
        html: compiledTemplate,
      };
    } else if (typeNotification === 'passwordResetRequest') {
      message = {
        from: EMAIL_USER,
        to: emailToSend,
        subject: 'Solicitud de reseteo de password en APP FACTURACION',
        html: compiledTemplate,
      };
    } else if (typeNotification === 'resetPassword') {
      message = {
        from: EMAIL_USER,
        to: emailToSend,
        subject: 'Cambio de password en APP FACTURACION',
        html: compiledTemplate,
      };
    } else if (typeNotification === 'signUpGoogle') {
      //console.log(emailToSend);
      message = {
        from: EMAIL_USER,
        to: emailToSend,
        subject: 'Usuario Creado en APP FACTURACION',
        html: compiledTemplate,
      };
    } else if (typeNotification === 'compra/venta') {
      message = {
        from: EMAIL_USER,
        to: emailToSend,
        subject: 'Notificación de Compra/Venta',
        html: compiledTemplate,
      };
    } else if (typeNotification === 'vendedor') {
      // Agregar esta condición para el tipo "vendedor"
      message = {
        from: EMAIL_USER,
        to: emailToSend,
        subject: 'Notificación de Venta',
        text: 'envio de creacion de servicio',
      };
    } else if (!typeNotification) {
      message = {
        from: EMAIL_USER,
        to: EMAIL_USER,
        subject: 'Contacto',
        text: compiledTemplate,
      };
    } else {
      throw new Error('Tipo de notificación no válido');
    }

    const transport = nodemailer.createTransport(config);

    const info = await transport.sendMail(message);

    console.log('msg from sendEmailNotification => ' + info.accepted[0]);

    return info.accepted[0];
  } catch (error) {
    console.log(error);
  }
};

module.exports = sendEmailNotification;
