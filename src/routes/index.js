const { Router } = require('express');
const router = Router();
const signUpRouter = require('./signUp.router');
const signInRouter = require('./signIn.router');
const {
  getLoginHandler,
  authCallbackHandler,
  loginFailureHandler,
  loginSuccessHandler,
  getLogoutHandler,
} = require('../handlers/getLogInGoogleHandler');
require('../middleware/passport');

router.use('/signUp', signUpRouter);
router.use('/signIn', signInRouter);

//!REFERIDO A LOGIN GOOGLE
router.use('/loginGoogle', getLoginHandler);
router.use('/loginGoogle/auth/callback', authCallbackHandler);
router.use('/loginGoogle/auth/callback/success', loginSuccessHandler);
router.use('/loginGoogle/auth/callback/failure', loginFailureHandler);
router.use('/loginGoogle/logoutGoogle', getLogoutHandler);

module.exports = router;
