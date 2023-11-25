const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  // Defino el modelo
  sequelize.define('Product', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
      unique: true,
    },

    productId: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: true,
      unique: true,
    },

    longDescription: {
      type: DataTypes.TEXT,
    },
  });
};
