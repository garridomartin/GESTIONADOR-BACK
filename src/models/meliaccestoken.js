const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  // defino el modelo
  sequelize.define(
    'MELIAccesToken',
    {
      id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
        unique: true,
      },
      token: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
      },
      UserId: {
        type: DataTypes.INTEGER, // Tipo de datos debe coincidir con el tipo en la tabla User
        allowNull: false,
      },
    },
    { timestamps: true }
  );
};
