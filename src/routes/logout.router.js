/* ===================================================
    Date: 2023-08-17 21:05:23
    Desc: Logout router
    Author: 🟣 Enoc Lima
=====================================================*/


const { Router } = require('express');
const { logoutHandler } = require('../handlers/logout.handler');

const router = Router();

router.get('/', logoutHandler);

module.exports = router;