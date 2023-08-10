const { Router } = require('express');
const router = Router();
const signUp = require('../handlers/signUp.handler');
const validateSignUp = require('../middleware/validateSignUpData');
const { upLoadSignUp } = require('../config/multer.config');

router.post('/', upLoadSignUp, validateSignUp, signUp);

module.exports = router;
