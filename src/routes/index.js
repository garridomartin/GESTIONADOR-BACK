const { Router } = require('express');
const router = Router();
const verifyToken = require('../middleware/verifyToken');
const admincheck = require('../middleware/admincheck');
const sellerCheck = require('../middleware/sellerCheck');
const checkTokenMELIExpire = require('../middleware/checkTokenMELIExpire');

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
const editProductRouter = require('./editProduct.router');
const deleteProduct = require('../handlers/deleteProduct.handler');
const createCategory = require('../handlers/createCategory.handler');
const editCategory = require('../handlers/editCategory.handler');
const getAllCategories = require('../handlers/getAllCategories.handler');
const createSupplier = require('../handlers/createSupplier.handler');
const editSupplier = require('../handlers/editSupplier.handler');
const getAllSuppliers = require('../handlers/getAllSuppliers.handler');
const batchNewCostRouter = require('./batchNewCost.router');
const sellByEcommRouter = require('./sellByEcomm.router');
const { getFeedbackMP } = require('../handlers/sellByEcomm.handler');
const getMELIAccesCode = require('../handlers/getMELIAccesCode.handler');
const meliSession = require('../handlers/setRefreshMELIToken.handler');
const stopMELISession = require('../handlers/stopRefreshMELIToken.handler');
const getMELIproducts = require('../handlers/getMELIproducts.handler');
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

//!REFERIDO A CONSULTAS A LA BASE DE DATOS

//!REFERIDO A MELI
router.get('/getmeliaccescode', verifyToken, admincheck, getMELIAccesCode); //obtiene la respuesta de MELI por primera autorizacion
//https://auth.mercadolibre.com.ar/authorization?response_type=code&client_id=7484916274409054
//↑↑↑↑↑ ESTE ES EL PEDIDO DE ACCESO
//LUEGO SE GENERARA UN TOKEN Y SE GUARDARÁ EN LA DB. ESE TOKEN SE REFRESCARÁ A PEDIDO DEL CONTROLLER SI PASARON MAS DE 6 HORAS DESDE SU GENERACION
router.get(
  '/iniciar-renovar-sesion-meli',
  verifyToken,
  admincheck,
  meliSession
); //!activa renovacion automatica del token de MELI
router.get(
  '/detener-renovar-sesion-meli',
  verifyToken,
  admincheck,
  stopMELISession
); //!DETIENE renovacion automatica del token de MELI
router.get('/getMELIproducts', verifyToken, admincheck, getMELIproducts); //obtiene la respuesta de MELI por primera autorizacion
//router.get('/getMELIStock', verifyToken, admincheck, getMELIStock); //obtiene la respuesta de MELI por primera autorizacion
//router.put('/updateMELIprice', verifyToken, admincheck, updateMELIprice); //obtiene la respuesta de MELI por primera autorizacion

//!REFERIDO A VENTAS

router.use('/sellByEcomm', verifyToken, sellByEcommRouter);
router.get('/feedback', getFeedbackMP); //RESPUESTA DE MP
/*

router.use('/sellBySellerCash', verifyToken, sellerCheck, sellBySellerCash); 
router.use('/sellBySellerMP', verifyToken, sellerCheck, sellBySellerMP); 
router.use('/getSellsBySeller', verifyToken, admincheck, sellsBySeller); 
router.use('/getSellsByEcomm', verifyToken, admincheck, sellsByEcomm); 
router.use('/getSellsBySeller', verifyToken, SellsBySeller); 
router.use('/getSellsBySeller', verifyToken, SellsBySeller); 
router.use('/getSellsBySeller', verifyToken, SellsBySeller); 
router.use('/getSellsBySeller', verifyToken, SellsBySeller); 
*/

//!REFERIDO A PRODUCTOS Y COMPRAS
router.use('/newProduct', verifyToken, admincheck, newProductRouter);
router.get('/getProductById/:id', verifyToken, getProductById);
router.get(
  '/getAllProducts',
  verifyToken,
  admincheck,
  checkTokenMELIExpire,
  getAllProducts
); //! SOLO USAR EN DASHBOARD DE ADMIN
router.get('/getProducts', verifyToken, getProducts); //! SOLO TRAE PRODUCTOS CON STOCK Y SIN DELETEAR
router.use('/editProduct', verifyToken, admincheck, editProductRouter);
router.get('/deleteProduct/:id', verifyToken, admincheck, deleteProduct);
router.post('/createCategory', verifyToken, admincheck, createCategory);
router.put('/editCategory', verifyToken, admincheck, editCategory);
router.get('/getAllCategories', verifyToken, admincheck, getAllCategories);
router.post('/createSupplier', verifyToken, admincheck, createSupplier);
router.put('/editSupplier', verifyToken, admincheck, editSupplier);
router.get('/getAllSuppliers', verifyToken, admincheck, getAllSuppliers);
router.use('/batchNewCost', verifyToken, admincheck, batchNewCostRouter);

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
