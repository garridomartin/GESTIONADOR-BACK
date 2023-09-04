const findUserById = require('../controllers/findUserById.controller');
const updateIsSellerController = require('../controllers/changeSellerPrivileges.controller');

const changeSellerPrivileges = async (req, res) => {
  try {
    const admincheck = await findUserById(req.id);
    //console.log('existUser:', admincheck);

    if (!admincheck)
      return res.status(404).json({ message: 'El usuario no existe' });

    if (!admincheck?.isAdmin)
      return res.status(404).json({
        message: 'No tenes la autoridad para acceder a esta informacion',
      });

    const { id } = req.body;
    const sellerToUpdate = await findUserById(id);

    await updateIsSellerController(sellerToUpdate);
    const updated = await findUserById(id);
    console.log('Seller updated:', updated);
    return res.status(200).json(updated);
  } catch (error) {
    res.status(404).json(error);
  }
};

module.exports = changeSellerPrivileges;
