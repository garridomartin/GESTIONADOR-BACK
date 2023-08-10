const bcrypt = require('bcrypt');
const dotenv = require('dotenv');
const { log } = require('handlebars');
dotenv.config();
const { AUTH_ROUNDS } = process.env;

const hashPassword = async (password) => {
  try {
    const saltRounds = parseInt(AUTH_ROUNDS);
    const hashedPassword = await bcrypt.hash(password, saltRounds);

    return hashedPassword;
  } catch (error) {
    console.error('Error hashing password:', error);
    throw new Error('Error hashing password');
  }
};

module.exports = hashPassword;
