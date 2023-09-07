const getAllSuppliersController = require('../controllers/getAllSuppliers.controller');

const getAllSuppliers = async (req, res) => {
  try {
    const suppliersFound = await getAllSuppliersController(req);

    const response = suppliersFound.map((supplier) => {
      //  console.log(suppliersFound);
      const suppliers = {
        id: supplier?.id,
        name: supplier?.name,
        email: supplier?.email,
        cellphone: supplier?.cellphone,
        address: supplier?.address,
        categories: supplier?.Categories,
      };
      return suppliers;
    });

    if (!suppliersFound) {
      return res.status(404).json({
        error: 'No hay Proveedores cargados base de datos',
      });
    }

    // console.log('suppliersFound:', suppliersFound);
    return res.status(200).json(response);
  } catch (error) {
    res.status(400).json({
      error: 'Hubo un error en la busqueda de los proveedores',
      details: error.message,
    });
  }
};

module.exports = getAllSuppliers;
