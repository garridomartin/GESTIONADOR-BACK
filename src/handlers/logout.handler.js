/* ===================================================
    Date: 2023-08-17 21:05:23
    Desc: Logout handler
    Author: 🟣 Enoc Lima
=====================================================*/


const logoutHandler = async (req, res) => {
    try {
        res.clearCookie('token');
        return res.status(200).json({ message: 'Logout successfully' });
    } catch (error) {
        return res.status(500).json({ message: 'Something went wrong' });
    }
}

module.exports = { logoutHandler };