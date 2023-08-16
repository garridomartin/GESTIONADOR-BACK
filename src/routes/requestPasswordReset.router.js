const { Router } = require('express');
const router = Router();
const requestPasswordReset = require('../handlers/requestPasswordReset.handler');
const validateResetPassword = require('../middleware/validateRequestPassword');

router.post('/', validateResetPassword, requestPasswordReset);

module.exports = router;
