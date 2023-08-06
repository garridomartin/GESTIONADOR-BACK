const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  // defino el modelo
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
        type: DataTypes.STRING,
      },
      shortDescription: {
        type: DataTypes.STRING,
      },
      files: {
        type: DataTypes.STRING,
      },
      longDescription: {
        type: DataTypes.TEXT,
      },
      cost: {
        type: DataTypes.INTEGER,
      },
      priceML: {
        type: DataTypes.INTEGER,
      },
      priceEComm: {
        type: DataTypes.INTEGER,
      },
      priceLocal: {
        type: DataTypes.INTEGER,
      },
      quantity: {
        type: DataTypes.INTEGER,
      },
      soldToDistribute: {
        type: DataTypes.INTEGER,
      },
      isDeleted: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
      },
    },
    { timestamps: false }
  );
};
