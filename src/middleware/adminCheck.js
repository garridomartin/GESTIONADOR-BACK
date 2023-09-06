const findUserById = require('../controllers/findUserById.controller');

const admincheck = async (req, res, next) => {
  try {
    const isAdminOk = await findUserById(req.id);
    //    console.log('isAdminOk:', isAdminOk);
    if (!isAdminOk)
      return res.status(404).json({ message: 'El usuario no existe' });

    if (!isAdminOk?.isAdmin)
      return res.status(403).json({
        message:
          'Solo un usuario administrador puede acceder a esta informacion',
      });
    next();
  } catch (error) {
    return res.status(500).json({
      error: 'Error en la autenticación del usuario administrador',
      details: error.message,
    });
  }
};

module.exports = admincheck;
