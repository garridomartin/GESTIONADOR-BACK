const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  // defino el modelo
  sequelize.define(
    'Supplier',
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
      email: {
        type: DataTypes.STRING,
      },

      description: {
        type: DataTypes.STRING,
      },
      address: {
        type: DataTypes.STRING,
      },
      cellphone: {
        type: DataTypes.BIGINT,
      },
    },
    { timestamps: false }
  );
};
