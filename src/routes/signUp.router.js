const { Router } = require('express');
const router = Router();
const signUp = require('../handlers/signUp.handler');
const validateSignUp = require('../middleware/validateSignUpData');

router.post('/', validateSignUp, signUp);

module.exports = router;
