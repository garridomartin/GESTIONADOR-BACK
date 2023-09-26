const findUserById = require('../controllers/findUserById.controller');

const userCheck = async (req, res, next) => {
  try {
    const isUserOk = await findUserById(req.id);
    //    console.log('isUserOk:', isUserOk);
    if (!isUserOk)
      return res.status(404).json({ message: 'El usuario no existe' });

    const user = isUserOk.toJSON();
    //console.log('user:', user);
    const requiredFields = ['name', 'email', 'cellPhone', 'cuil'];

    const missingFields = requiredFields.filter((field) => !user[field]);

    if (missingFields.length > 0) {
      const errorMessage = `Faltan los siguientes campos: ${missingFields.join(
        ', '
      )}`;
      console.error(errorMessage); // Imprime el mensaje en la consola del servidor
      return res.status(403).json({
        message: errorMessage,
        missingFields: missingFields, // Incluye los campos faltantes en la respuesta
      });
    }
    //console.log('El usuario tiene todos los campos completos');
    next();
  } catch (error) {
    return res.status(500).json({
      error: 'Error en la autenticación del usuario',
      details: error.message,
    });
  }
};

module.exports = userCheck;
