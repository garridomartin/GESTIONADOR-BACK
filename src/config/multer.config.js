const multer = require('multer');

//Creamos la instancia de Multer para singUp
const upLoadSignUp = multer({ storage: multer.memoryStorage() }).single(
  'profilePict'
);

const uploadCreateProduct = multer({ storage: multer.memoryStorage() }).single(
  'files'
);

module.exports = { upLoadSignUp, uploadCreateProduct };
