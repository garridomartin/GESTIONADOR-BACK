const findUserById = require('../controllers/findUserById.controller');
const updateIsSellerController = require('../controllers/changeSellerPrivileges.controller');

const changeSellerPrivileges = async (req, res) => {
  try {
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
