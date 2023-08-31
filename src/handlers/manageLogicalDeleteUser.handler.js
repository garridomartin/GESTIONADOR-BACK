const findUserById = require('../controllers/findUserById.controller');
const manageLogicalDeleteUserControler = require('../controllers/manageLogicalDeleteUser.controller');

const manageLogicalDeleteUser = async (req, res) => {
  try {
    const admincheck = await findUserById(req.id);
    console.log('existUser:', admincheck);

    if (!admincheck)
      return res.status(404).json({ message: 'El usuario no existe' });

    if (!admincheck?.isAdmin)
      return res.status(404).json({
        message: 'No tenes la autoridad para acceder a esta informacion',
      });

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
