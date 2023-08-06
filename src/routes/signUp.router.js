const { Router } = require('express');
const signUp = require('../handlers/signUp.handler');
const { validateSignUp } = require('../middleware/validateSignUpData');
const { upLoadSignUp } = require('../config/multer.config');

const router = Router();

router.post('/', upLoadSignUp, signUp);

module.exports = router;
