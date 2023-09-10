const findUserById = require('../controllers/findUserById.controller');

const sellerCheck = async (req, res, next) => {
  try {
    const isSellerOk = await findUserById(req.id);
    //    console.log('isSellerOk:', isSellerOk);
    if (!isSellerOk)
      return res.status(404).json({ message: 'El usuario no existe' });

    if (!isSellerOk?.isSeller)
      return res.status(403).json({
        message: 'Solo un usuario vendedor puede acceder a esta informacion',
      });
    next();
  } catch (error) {
    return res.status(500).json({
      error: 'Error en la autenticación del usuario vendedor',
      details: error.message,
    });
  }
};

module.exports = sellerCheck;
