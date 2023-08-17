/* ===================================================
    Date: 2023-08-17 21:05:23
    Desc: Current user controller
    Author: 🟣 Enoc Lima
=====================================================*/


const { User } = require('../db.js');

const currentUserController = async (tokenUser) => {
    try {
        const { username, email } = tokenUser;

        const user = await User.findOne({ where: { username, email } });

        if (!user) return { isAuthenticated: false };

        return {
            isAuthenticated: true,
            username: user.username,
            email: user.email,
            profilePict: user.profilePict,
            isAdmin: user.isAdmin,
            isSeller: user.isSeller
        };
    } catch (error) {
       console.log(error)
    }
}

module.exports = currentUserController;