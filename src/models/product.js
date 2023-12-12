const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  // Defino el modelo
  sequelize.define(
    'Product',
    {
      id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
        unique: true,
      },
      name: {
        type: DataTypes.TEXT,
      },
      cost: {
        type: DataTypes.DECIMAL(10, 2), // Tipo DECIMAL con 10 dígitos en total y 2 decimales
        allowNull: true,
        defaultValue: 0,
        validate: {
          min: 0,
        },
      },
      priceML: {
        type: DataTypes.DECIMAL(10, 2), // Tipo DECIMAL con 10 dígitos en total y 2 decimales
        allowNull: true,
        defaultValue: 0,
        validate: {
          min: 0,
        },
      },
      priceEComm: {
        type: DataTypes.DECIMAL(10, 2), // Tipo DECIMAL con 10 dígitos en total y 2 decimales
        allowNull: true,
        defaultValue: 0,
        validate: {
          min: 0,
        },
      },
      priceLocal: {
        type: DataTypes.DECIMAL(10, 2), // Tipo DECIMAL con 10 dígitos en total y 2 decimales
        defaultValue: 0,
      },
      quantity: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: 0,
        validate: {
          min: 0,
        },
      },
      quantityML: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: 0,
        validate: {
          min: 0,
        },
      },
      soldToDistribute: {
        type: DataTypes.INTEGER,
      },
      idMeli: {
        type: DataTypes.STRING,
        unique: true,
      },
      isDeleted: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
      },
      files: {
        type: DataTypes.TEXT,
      },
    },
    { timestamps: true }
  );
};
