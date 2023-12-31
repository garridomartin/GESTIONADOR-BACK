const getAllSellersController = require('../controllers/getAllUsers.controller');

const getAllSellers = async (req, res) => {
  try {
    const sellers = await getAllSellersController();
    // console.log('sellers:', sellers);
    const response = sellers.map((seller) => {
      const newseller = {
        id: seller?.id,
        name: seller?.name,
        email: seller?.email,
        profilePict: seller?.profilePict,
        isAdmin: seller?.isAdmin,
        isSeller: seller?.isSuperAdmin,
        isDeleted: seller?.isDeleted,
        birthDay: seller?.birthDay,
        cellPhone: seller?.cellPhone,
        cuil: seller?.cuil,
      };

      return newseller;
    });

    res.status(200).json(response);
  } catch (error) {
    res.status(404).json(error);
  }
};

module.exports = getAllSellers;
