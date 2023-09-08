const multer = require('multer');

//Creamos la instancia de Multer para singUp
const upLoadSignUp = multer({ storage: multer.memoryStorage() }).single(
  'profilePict'
);

const uploadCreateProduct = multer({ storage: multer.memoryStorage() }).single(
  'files'
);

const uploadBatchNewCost = multer({ storage: multer.memoryStorage() }).single(
  'newCost'
);

module.exports = { upLoadSignUp, uploadCreateProduct, uploadBatchNewCost };
