/* ===================================================
    Date: 2023-08-17 21:05:23
    Desc: Current user router
    Author: 🟣 Enoc Lima
=====================================================*/


const { Router } = require('express');
const { currentUserHandler } = require('../handlers/currentUser.handler');

const router = Router();

router.get('/', currentUserHandler);

module.exports = router;