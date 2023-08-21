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
      return { warn: 'Email de usuario aun no confirmado' };
    if (user?.isDeleted)
      return { error: 'Este usuario fue baneado o eliminado' };

    const passCompare = await bcrypt.compare(password, user.password);
    if (!passCompare) return { warn: 'Password erroneo' };

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
      profilePict,
      isAdmin,
      isSeller,
      expireIn: token.expiresIn,
    };
  } catch (error) {
    console.log(error);
  }
};

module.exports = signInController;
