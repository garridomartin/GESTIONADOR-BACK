const { Router } = require('express');
const router = Router();
const verifyToken = require('../middleware/verifyToken');
const signUpRouter = require('./signUp.router');
const signInRouter = require('./signIn.router');
const resetPassword = require('./resetPassword.router');
const requestPasswordReset = require('./requestPasswordReset.router');
const {
  getLoginHandler,
  authenticateHandler,
  authCallbackHandler,
  loginFailureHandler,
  loginSuccessHandler,
  getLogoutHandler,
} = require('../handlers/getLogInGoogleHandler');
require('../middleware/passport');
const passport = require('passport');

router.use('/signUp', signUpRouter);
router.use('/signIn', signInRouter);
router.use('/requestPasswordReset', requestPasswordReset);
router.use('/resetPassword', verifyToken, resetPassword);

//!REFERIDO A LOGIN GOOGLE
router.get('/loginGoogle', getLoginHandler);
router.get('/loginGoogle/auth', authenticateHandler);
router.get('/loginGoogle/auth/callback', authCallbackHandler);
router.get('/loginGoogle/auth/callback/success', loginSuccessHandler);
router.get('/loginGoogle/auth/callback/failure', loginFailureHandler);
router.get('/loginGoogle/logoutGoogle', getLogoutHandler);

module.exports = router;
