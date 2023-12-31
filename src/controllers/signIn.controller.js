const { User } = require('../db');
const bcrypt = require('bcrypt');
const { tokenCreated } = require('../utils/createToken.js');
const { SECRET_KEY } = process.env;

const signInController = async (req) => {
  try {
    const { email, password } = req;

    const user = await User.findOne({ where: { email } }); // query user by email

    if (!user) return { error: 'Usuario invalido o inexistente' };
    if (!user.isEmailConfirmed)
      return { error: 'Email de usuario aun no confirmado' };
    if (user?.isDeleted)
      return { error: 'Este usuario fue baneado o eliminado' };

    const passCompare = await bcrypt.compare(password, user.password);
    if (!passCompare) {
      throw new Error('Contraseña incorrecta');
    }

    const token = tokenCreated(user, SECRET_KEY);

    const nameUser = user.name;
    const profilePict = user.profilePict;
    const Email = user.email;
    const isAdmin = user.isAdmin;
    const isSeller = user.isSeller;

    return {
      token: token.token,
      userName: user.username, //--------> added by Enok Lima
      nameUser,
      Email,
      cellPhone: user.cellPhone,
      birthDay: user.birthDay,
      cuil: user.cuil,
      profilePict,
      isAdmin,
      isSeller,
      expireIn: token.expiresIn,
    };
  } catch (error) {
    console.log('Error en signInController:', error);
    throw error;
  }
};

module.exports = signInController;
