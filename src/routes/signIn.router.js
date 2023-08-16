const { Router } = require('express');
const { signInHandler } = require('../handlers/signIn.handler');
const validateSignIn = require('../middleware/validateSignIn');

const router = Router();

router.post('/', validateSignIn, signInHandler);

module.exports = router;
