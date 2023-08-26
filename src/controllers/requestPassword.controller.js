const { User } = require('../db.js');
const sendEmailNotification = require('../utils/senderMail.js');
const fs = require('fs');
const path = require('path');
const { tokenCreated } = require('../utils/createToken.js');
const template = require('../utils/templateCreation.js');
const { log } = require('handlebars');
const { URL_DEPLOY_FRONT, SECRET_KEY } = process.env;

const requestPasswordController = async (user) => {
  try {
    const resetToken = tokenCreated(user, SECRET_KEY);
    //console.log('resetToken:', resetToken);
    user.resetToken = resetToken.token;
    await user.save();
    const valorToken = resetToken.token;

    //Enlace para rehacer contraseña, Enok debe implementar esta ruta
    const resetLink = `${URL_DEPLOY_FRONT}/reset-password/${valorToken}`;

    const filePath = path.join(
      __dirname,
      '..',
      'views',
      'passwordResetRequestNotification.hbs'
    );
    const templatePasswordResetRequest = fs.readFileSync(filePath, 'utf-8');
    const compiledTemplate = template(templatePasswordResetRequest, {
      name: user.name,
      resetLink,
    });

    const emailResult = await sendEmailNotification(
      'passwordResetRequest',
      user.email,
      compiledTemplate
    );

    return emailResult;
  } catch (error) {
    console.error('Error during password reset request:', error);
    throw new Error(
      'Ocurrió un error durante la solicitud de cambio de contraseña'
    );
  }
};

module.exports = requestPasswordController;
