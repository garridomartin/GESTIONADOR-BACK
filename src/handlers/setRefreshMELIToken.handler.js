const { IntervalStatus } = require('../db');
const {
  startInterval,
} = require('../controllers/setRefreshMELIToken.controller');

const meliSession = async (req, res) => {
  const UserId = req.id;
  try {
    const intervalStatus = await IntervalStatus.findOne({ where: { id: 1 } });

    if (!intervalStatus.is_active) {
      startInterval(UserId); // Iniciar el intervalo aquí con el UserId
      console.log('Intervalo activado');
      res.status(200).json({ message: 'Intervalo activado' });
    } else {
      console.log('El intervalo ya estaba activado');
      res.json({ message: 'El intervalo ya estaba activado' });
    }
  } catch (error) {
    console.error('Error en meliSession:', error);
    res.status(500).json({
      error: 'Ocurrió un error en meliSession',
      details: error.message,
    });
  }
};

module.exports = meliSession;
