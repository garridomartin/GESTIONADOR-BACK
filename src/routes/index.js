const { Router } = require('express');
const router = Router();
const verifyToken = require('../middleware/verifyToken');
const signUpRouter = require('./signUp.router');
const emailConfirmation = require('../handlers/emailConfirmation.handler');
const signInRouter = require('./signIn.router');
const resetPassword = require('./resetPassword.router');
const requestPasswordReset = require('./requestPasswordReset.router');
const logoutRouter = require('./logout.router'); // ------> added by Enok Lima
const currentUserRouter = require('./currentUser.router'); //------> added by Enok Lima
const editUserRouter = require('./editUser.router');
const getUserById = require('../handlers/getUserById.handler');
const getAllUsersInfo = require('../handlers/getAllUsersInfo.handler');
const getAllSellers = require('../handlers/getAllSellers.handler');
const manageLogicalDeleteUser = require('../handlers/manageLogicalDeleteUser.handler');
const changeSellerPrivileges = require('../handlers/changeSellerPrivileges.handler');
/*const currentUserRouter = require('./currentUser.router');

const currentUserRouter = require('./currentUser.router');
const currentUserRouter = require('./currentUser.router');*/
const {
  logInGoogleHandler,
  authenticateHandler,
  authCallbackHandler,
  loginFailureHandler,
  loginSuccessHandler,
  getLogoutHandler,
} = require('../handlers/logInGoogle.handler');
require('../middleware/passport');

//!REFERIDO A PAQAR

//!REFERIDO A MERCADOLIBRE

//!REFERIDO A FACTURACION

//!REFERIDO A PRODUCTOS, COMPRAS Y VENTAS

//!REFERIDO A USUARIOS
router.use('/editUser', verifyToken, editUserRouter);
router.use('/getUserById', verifyToken, getUserById);
router.use('/allUsers', verifyToken, getAllUsersInfo);
router.use('/getSellers', verifyToken, getAllSellers);
router.use('/deleteUser', verifyToken, manageLogicalDeleteUser);
router.use('/changeUserToSeller', verifyToken, changeSellerPrivileges);

//!REFERIDO A LOGIN PROPIO
router.use('/currentUser', verifyToken, currentUserRouter); // ------> added by Enok Lima
router.use('/signUp', signUpRouter);
router.get('/confirmEmail/:token', verifyToken, emailConfirmation);
router.use('/signIn', signInRouter);
router.use('/requestPasswordReset', requestPasswordReset);
router.use('/resetPassword', verifyToken, resetPassword);
router.use('/logout', verifyToken, logoutRouter); // ------> added by Enok Lima

//!REFERIDO A LOGIN GOOGLE
router.get('/loginGoogle', logInGoogleHandler);
router.get('/loginGoogle/auth', authenticateHandler);
router.get('/loginGoogle/auth/callback', authCallbackHandler);
router.get('/loginGoogle/auth/callback/success', loginSuccessHandler);
router.get('/loginGoogle/auth/callback/failure', loginFailureHandler);
router.get('/loginGoogle/logoutGoogle', getLogoutHandler);

module.exports = router;
