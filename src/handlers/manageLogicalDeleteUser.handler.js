const findUserById = require('../controllers/findUserById.controller');
const manageLogicalDeleteUserControler = require('../controllers/manageLogicalDeleteUser.controller');

const manageLogicalDeleteUser = async (req, res) => {
  try {
    const { id } = req.body;
    const userToDelete = await findUserById(id);

    await manageLogicalDeleteUserControler(userToDelete);
    const updated = await findUserById(id);
    console.log('User deleted:', updated);
    return res.status(200).json(updated);
  } catch (error) {
    res.status(404).json(error);
  }
};

module.exports = manageLogicalDeleteUser;
