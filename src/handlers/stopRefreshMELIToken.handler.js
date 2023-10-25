const {
  setUserId,
  meliSessionController,
} = require('../controllers/setRefreshMELIToken.controller');

const stopMELISession = async (req, res) => {
  if (intervalId) {
    clearInterval(intervalId);
    console.log('Intervalo detenido.');
    res.send('Intervalo detenido.');
  } else {
    console.log('Intervalo no está en funcionamiento.');
    res.send('Intervalo no está en funcionamiento.');
  }
};

module.exports = stopMELISession;
