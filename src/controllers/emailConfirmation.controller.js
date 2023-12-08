const { User } = require('../db.js');

const confirmEmailController = async (email) => {
  try {
    const user = await User.findOne({ where: { email } });
    if (!user) {
      throw new Error('Usuario no encontrado');
    }

    user.isEmailConfirmed = true;
    await user.save();

    return { message: 'Correo electrónico confirmado exitosamente' };
  } catch (error) {
    console.error('Error confirming email:', error);
    throw new Error('Error al confirmar el correo electrónico');
  }
};

module.exports = confirmEmailController;
