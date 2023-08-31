const { User } = require('../db');

const updateIsSellerController = async (user) => {
  const updated = await User.update(
    { isSeller: !user.isSeller },
    { where: { id: user.id } }
  );

  return updated;
};

module.exports = updateIsSellerController;
