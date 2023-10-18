const getMELIAccesCodeController = require('../controllers/getMELIAccesCode.controller');

const getMELIAccesCode = async (req, res) => {
  try {
    const { code } = req.query;
    console.log('MELIAccesCode en el handler: ', code);
    const user_id = req.id;

    const meliAccesCode = await getMELIAccesCodeController(user_id, code);

    if (!meliAccesCode) {
      return res.status(404).json({
        error: 'MELI NO PROPORCIONO EL CODIGO DE ACCESO',
      });
    }

    return res.status(200).json(meliAccesCode);
  } catch (error) {
    console.error(error);
    res.status(400).json({
      error: 'Hubo un error en la obtencion del codigo de acceso en MELI',
      details: error.message,
    });
  }
};

module.exports = getMELIAccesCode;
