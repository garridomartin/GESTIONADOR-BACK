/* ===================================================
    Date: 2023-08-17 21:05:23
    Desc: Current user handler
    Author: 🟣 Enoc Lima
=====================================================*/


const currentUserController = require('../controllers/currentUser.controller');

const currentUserHandler = async (req, res) => {
    try {
        const tokenUser = {username: req.username, email: req.email};

        const user = await currentUserController(tokenUser);
        return res.status(200).json(user);
    } catch (error) {
        return res.status(500).json({ warn: 'Something went wrong' });
    }
}

module.exports = { currentUserHandler };