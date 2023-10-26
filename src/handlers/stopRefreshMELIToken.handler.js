// stopMELISession.handler.js

const {
  isIntervalActive,
  stopInterval,
} = require('../controllers/setRefreshMELIToken.controller');

const stopMELISession = async (req, res) => {
  if (isIntervalActive) {
    stopInterval();
    console.log('Intervalo detenido');
    res.send('Intervalo detenido');
  } else {
    console.log('Intervalo no está en funcionamiento');
    res.send('Intervalo no está en funcionamiento');
  }
};

module.exports = stopMELISession;
