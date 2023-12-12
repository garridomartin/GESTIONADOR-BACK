/* ===================================================
    Date: 2023-08-17 21:05:23
    Desc: Logout handler
    Author: 🟣 Enoc Lima
=====================================================*/

const logoutHandler = async (req, res) => {
  try {
    res
      .clearCookie('token', {
        sameSite: 'None',
        secure: true, // Asegúrate de estar en un entorno con HTTPS
      })
      .res.setHeader('Cache-Control', 'no-store, max-age=0');
    return res.status(200).json({ message: 'Logout successfully' });
  } catch (error) {
    return res.status(500).json({ message: 'Something went wrong' });
  }
};

module.exports = { logoutHandler };
