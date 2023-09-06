const updateUser = require('../controllers/updateUser.controller');
const findUserById = require('../controllers/findUserById.controller');

const editUserHandler = async (req, res) => {
  try {
    const { name, password, cellPhone, birthDay, cuil } = req.body;
    console.log('body:', req.body);
    await updateUser(
      req.id,
      name,
      password,
      cellPhone,
      birthDay,
      cuil,
      req.file
    );

    const userUpdate = await findUserById(req.id);
    let response = {
      name: userUpdate?.name,
      profilePict: userUpdate?.profilePict,
      password: userUpdate?.password,
      cellPhone: userUpdate?.cellPhone,
      birthDay: userUpdate?.birthDay,
      cuil: userUpdate?.cuil,
    };

    return res.status(200).json(response);
  } catch (error) {
    res.status(404).json(error);
  }
};

module.exports = editUserHandler;
