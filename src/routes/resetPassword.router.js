const { Router } = require('express');
const router = Router();
const resetPassword = require('../handlers/resetPassword.handler');
const validateResetPassword = require('../middleware/validateRequestPassword');

router.post('/', validateResetPassword, resetPassword);

module.exports = router;
