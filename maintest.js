const dotenv = require('dotenv');
dotenv.config();
const { Sequelize } = require('sequelize');
const { DB_USER, DB_PASSWORD, DB_HOST, DB_PORT, DB_TABLE } = process.env;

console.log('DB_USER:', DB_USER);
console.log('DB_PASSWORD:', DB_PASSWORD);
console.log('DB_HOST:', DB_HOST);
console.log('DB_PORT:', DB_PORT);
console.log('DB_TABLE2:', DB_TABLE);

// Verifica que las variables de entorno tengan valores definidos y válidos

const sequelize = new Sequelize(
  `postgres://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_TABLE}`,
  {
    dialect: 'postgres',
  }
);

module.exports = sequelize;
