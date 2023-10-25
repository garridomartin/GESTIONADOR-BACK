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
      cost: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: 0,
        validate: {
          min: 0,
        },
      },
      priceML: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: 0,
        validate: {
          min: 0,
        },
      },
      priceEComm: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: 0,
        validate: {
          min: 0,
        },
      },
      priceLocal: {
        type: DataTypes.INTEGER,
        defaultValue: 0,
      },
      stock: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: 0,
        validate: {
          min: 0,
        },
      },
      stockML: {
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
      shortDescription: {
        type: DataTypes.STRING,
      },
      longDescription: {
        type: DataTypes.TEXT,
      },
      isDeleted: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
      },
      files: {
        type: DataTypes.STRING,
      },
    },
    { timestamps: false }
  );
};
