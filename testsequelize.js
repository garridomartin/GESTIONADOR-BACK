const sequelize = require('./maintest');

(async () => {
  try {
    await sequelize.authenticate(); // Verifica la autenticación de la base de datos
    console.log('Conexión exitosa.');

    const result = await sequelize.query('SELECT 1');
    console.log(result);
  } catch (error) {
    console.error('Error:', error);
  } finally {
    await sequelize.close();
  }
})();
