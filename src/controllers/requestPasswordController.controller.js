const { User } = require('../db.js');
const hashPassword = require('../utils/hashPassword.js');
const sendEmailNotification = require('../utils/senderMail.js');
const fs = require('fs');
const path = require('path');
const jwt = require('jsonwebtoken');
const template = require('../utils/templateCreation.js');
const { URL_DEPLOY_FRONT } = process.env;

const requestPasswordController = async (user) => {
  try {
    const resetToken = jwt.sign({ userId: user.id }, 'secreto', {
      //token para rehacer contraseña
      expiresIn: '30d',
    });

    user.resetToken = resetToken;
    await user.save();

    //Enlace para rehacer contraseña, Enok debe implementar esta ruta
    const resetLink = `${URL_DEPLOY_FRONT}/reset-password/${resetToken}`;

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
