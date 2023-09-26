const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  // defino el modelo
  sequelize.define(
    'User',
    {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
      },
      username: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
      },
      name: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: false,
      },
      password: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      resetToken: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      cellPhone: {
        type: DataTypes.BIGINT,
      },
      birthDay: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      cuil: {
        type: DataTypes.BIGINT,
        allowNull: true,
        validate: {
          isNumeric: true, // Validamos que sea numérico
          isCuilValid(value) {
            if (value && value.length !== 11) {
              throw new Error('El CUIL/CUIT debe tener exactamente 11 dígitos');
            }
          },
        },
      },
      email: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
      },
      profilePict: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      isEmailConfirmed: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
      },
      isAdmin: {
        type: DataTypes.BOOLEAN,
        allowNull: true,
        defaultValue: false,
      },
      isSeller: {
        type: DataTypes.BOOLEAN,
        allowNull: true,
        defaultValue: false,
      },
      isDeleted: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
      },
    },
    {
      // -------------------> start added by Enok Lima for add indexes
      indexes: [
        {
          unique: true,
          fields: ['username', 'email'],
        },
      ],
      // ------------------->  end added by Enok Lima for add indexes
    }
  );
};
