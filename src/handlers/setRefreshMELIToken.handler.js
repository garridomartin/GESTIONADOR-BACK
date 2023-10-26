const {
  meliSessionController,
  setUserId,
} = require('../controllers/setRefreshMELIToken.controller');

const meliSession = async (req, res) => {
  const UserId = req.id;
  //console.log('userId:', UserId);
  try {
    const response = await meliSessionController(UserId);
    console.log('REFRESH TOKEN ACTIVADO');
    const userid = await setUserId(UserId);
    startInterval();
    console.log('Intervalo activado');
    res.status(200).json(response);
  } catch (error) {
    return res.status(500).json({
      error: 'Error al iniciar ',
      details: error.message,
    });
  }
};

module.exports = meliSession;
