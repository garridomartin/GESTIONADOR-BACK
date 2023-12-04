const { User } = require('../db.js');
const hashPassword = require('../utils/hashPassword.js');
const sendEmailNotification = require('../utils/senderMail.js');
const template = require('../utils/templateCreation.js');
const fs = require('fs');
const path = require('path');

const resetPassController = async (email, newPassword) => {
  try {
    const user = await User.findOne({ where: { email } });

    if (!user) {
      return { error: 'El usuario no está registrado' };
    }

    // Actualizo la contraseña del usuario
    const passwordHash = await hashPassword(newPassword);
    user.password = passwordHash;
    await user.save();

    //Notifico por correo electrónico
    const filePath = path.join(
      __dirname,
      '..',
      'views',
      'passwordResetNotification.hbs'
    );

    const templatePasswordReset = fs.readFileSync(filePath, 'utf-8');
    const compiledTemplate = template(templatePasswordReset, {
      name: user.name,
    });

    const emailResult = await sendEmailNotification(
      'resetPassword',
      user.email,
      compiledTemplate
    );

    return {
      success: true,
      message: 'Contraseña restablecida con éxito',
      emailResult: emailResult,
    };
  } catch (error) {
    console.error('Error during password reset:', error);
    return {
      error:
        'Ocurrió un error durante el proceso de restablecimiento de contraseña',
    };
  }
};

module.exports = resetPassController;
