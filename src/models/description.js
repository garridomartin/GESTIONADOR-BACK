const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  // Defino el modelo
  sequelize.define(
    'Description',
    {
      id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
        unique: true,
      },

      product_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },

      longDescription: {
        type: DataTypes.TEXT,
      },
    },
    { timestamps: false }
  );
};
