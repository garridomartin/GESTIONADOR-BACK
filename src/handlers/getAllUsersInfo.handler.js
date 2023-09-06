const getAllUsers = require('../controllers/getAllUsers.controller');

const getAllUsersInfo = async (req, res) => {
  try {
    const users = await getAllUsers();
    // console.log('users:', users);
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
