const { Router } = require('express');
const router = Router();
const verifyToken = require('../middleware/verifyToken');
const admincheck = require('../middleware/admincheck');

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
const newProductRouter = require('./newProduct.router');
const getProductById = require('../handlers/getProductById.handler');
const getAllProducts = require('../handlers/getAllProducts.handler');
const getProducts = require('../handlers/getProducts.handler');
const editProductRouter = require('./editProductRouter.router');
const deleteProduct = require('../handlers/deleteProduct.handler');
const createCategory = require('../handlers/createCategory.handler');
const editCategory = require('../handlers/editCategory.handler');
const getAllCategories = require('../handlers/getAllCategories.handler');
const createSupplier = require('../handlers/createSupplier.handler');
const editSupplier = require('../handlers/editSupplier.handler');
const getAllSuppliers = require('../handlers/getAllSuppliers.handler');
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

//!REFERIDO A VENTAS
/*
router.use('/getSellsBySeller', verifyToken, SellsBySeller); */

//!REFERIDO A CONSULTAS A LA BASE DE DATOS

//!REFERIDO A PRODUCTOS Y COMPRAS
router.use('/newProduct', verifyToken, admincheck, newProductRouter);
router.get('/getProductById/:id', verifyToken, getProductById);
router.get('/getAllProducts', verifyToken, admincheck, getAllProducts); //! SOLO USAR EN DASHBOARD DE ADMIN
router.get('/getProducts', verifyToken, getProducts); //! SOLO TRAE PRODUCTOS CON STOCK Y SIN DELETEAR
router.use('/editProduct', verifyToken, admincheck, editProductRouter);
router.get('/deleteProduct/:id', verifyToken, admincheck, deleteProduct);
router.post('/createCategory', verifyToken, admincheck, createCategory);
router.put('/editCategory', verifyToken, admincheck, editCategory);
router.get('/getAllCategories', verifyToken, admincheck, getAllCategories);
router.post('/createSupplier', verifyToken, admincheck, createSupplier);
router.put('/editSupplier', verifyToken, admincheck, editSupplier);
router.get('/getAllSuppliers', verifyToken, admincheck, getAllSuppliers);
/* router.use('/batchNewCostandPrice', verifyToken, admincheck,batchNewCost);*/

//!REFERIDO A USUARIOS
router.use('/editUser', verifyToken, admincheck, editUserRouter);
router.get('/getUserById', verifyToken, admincheck, getUserById);
router.get('/allUsers', verifyToken, admincheck, getAllUsersInfo);
router.get('/getSellers', verifyToken, admincheck, getAllSellers);
router.get('/deleteUser', verifyToken, admincheck, manageLogicalDeleteUser);
router.get(
  '/changeUserToSeller',
  verifyToken,
  admincheck,
  changeSellerPrivileges
);

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
