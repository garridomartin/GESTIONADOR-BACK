const { Router } = require('express');
const editUserHandler = require('../handlers/editUser.handler');
const { upLoadSignUp } = require('../config/multer.config');

const router = Router();

router.put('/', upLoadSignUp, editUserHandler);

module.exports = router;
