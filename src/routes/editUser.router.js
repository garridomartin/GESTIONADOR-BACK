const { Router } = require('express');
const editUserHandler = require('../handlers/editUser.handler');
const { upLoadSignUp } = require('../config/multer.config');
const validateEditUser = require('../middleware/validateEditUser');

const router = Router();

router.put('/', upLoadSignUp, validateEditUser, editUserHandler);

module.exports = router;
