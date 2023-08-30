const findUserById = require('../controllers/findUserById.controller');
const getAllUsers = require('../controllers/getAllUsers.controller');

const getAllUsersInfo = async (req, res) => {
  try {
    const admincheck = await findUserById(req.id);
    console.log('admincheck:', admincheck);

    if (!admincheck)
      return res.status(404).json({ message: 'El usuario no existe' });

    if (!admincheck?.isAdmin)
      return res.status(404).json({
        message: 'No tenes la autoridad para acceder a esta informacion',
      });

    const users = await getAllUsers();
    console.log('users:', users);
    const response = users.map((user) => {
      const newUser = {
        id: user?.id,
        name: user?.name,
        email: user?.email,
        profilePict: user?.profilePict,
        isAdmin: user?.isAdmin,
        isSeller: user?.isSuperAdmin,
        isDeleted: user?.isDeleted,
        birthDay: user?.birthDay,
      };

      return newUser;
    });

    res.status(200).json(response);
  } catch (error) {
    res.status(404).json(error);
  }
};

module.exports = getAllUsersInfo;
