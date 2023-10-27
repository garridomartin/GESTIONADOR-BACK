// stopMELISession.handler.js
const {
  stopInterval,
} = require('../controllers/setRefreshMELIToken.controller');
const { IntervalStatus } = require('../db');

const stopMELISession = async (req, res) => {
  // Consultar el valor de isIntervalActive en la base de datos
  const intervalStatus = await IntervalStatus.findOne({ where: { id: 1 } });

  if (intervalStatus && intervalStatus.is_active) {
    // Si el intervalo está activo en la base de datos, detenerlo
    stopInterval();
    console.log('Intervalo detenido');
    res.json({ message: 'Intervalo detenido' });
  } else {
    console.log('El intervalo ya estaba detenido');
    res.json({ message: 'El intervalo ya estaba detenido' });
  }
};

module.exports = stopMELISession;
