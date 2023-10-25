const {
  setUserId,
  meliSessionController,
} = require('../controllers/setRefreshMELIToken.controller');

const meliSession = async (req, res) => {
  try {
    const UserId = req.id;
    setUserId(UserId);

    const response = await meliSessionController(UserId);
    console.log('REFRESH TOKEN ACTIVADO');
    res.status(200).json(response);
  } catch (error) {
    return res.status(500).json({
      error: 'Error al iniciar ',
      details: error.message,
    });
  }
};

module.exports = meliSession;
