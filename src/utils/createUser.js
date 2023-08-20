const bcrypt = require('bcrypt');
const { AUTH_ROUNDS } = process.env;

const createUser = async (email) => {
  try {
    const saltRounds = parseInt(AUTH_ROUNDS);
    const hashedEmail = await bcrypt.hash(email, saltRounds);

    const userName = hashedEmail.replace(/[^\w]/g, '').slice(0, 10); // Elimina caracteres no alfanuméricos y toma los primeros 10 caracteres

    return userName;
  } catch (error) {
    console.error('Error creating user:', error);
    throw new Error('Error creating user');
  }
};

module.exports = createUser;
