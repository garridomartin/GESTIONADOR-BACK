const createSupplierController = require('../controllers/createSupplier.controller');
const findSupplierById = require('../controllers/findSupplierById.controller');

const createSupplier = async (req, res) => {
  try {
    const { name, email, description, address, cellphone, category } = req.body;
    //console.log('a ver que viene por body', req.body);

    const newSupplier = await createSupplierController(
      name,
      email,
      description,
      address,
      cellphone,
      category
    );
    console.log('newSupplier:', newSupplier);

    const result = await findSupplierById(newSupplier.id);

    //console.log('newSupplier:', newSupplier);

    const response = {
      id: result?.id,
      name: result?.name,
      description: result?.description,
      address: result?.address,
      cellphone: result?.cellphone,
      category: result?.category,
    };
    //console.log('response:', response);
    return res.status(201).json(response);
  } catch (error) {
    // Captura el error del controlador y envía una respuesta JSON adecuada.
    if (error.message === 'Ya existe un Proveedor con ese nombre') {
      return res.status(400).json({
        error: 'Ya existe un Proveedor con ese nombre',
      });
    } else {
      console.log(error.message);
      return res.status(400).json({
        error: error.message,
      });
    }
  }
};

module.exports = createSupplier;
