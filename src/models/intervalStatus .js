const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  // defino el modelo
  sequelize.define(
    'IntervalStatus',
    {
      id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        unique: true,
        defaultValue: 1,
      },
      is_active: {
        type: DataTypes.BOOLEAN,
        defaultValue: false, // Valor por defecto es false (inactivo)
      },
    },
    { timestamps: false }
  );
};
