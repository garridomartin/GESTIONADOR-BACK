const multer = require('multer');

//Creamos la instancia de Multer para singUp
const upLoadSignUp = multer({ storage: multer.memoryStorage() }).single(
  'profilePict'
);

const uploadCreateService = multer({ storage: multer.memoryStorage() }).single(
  'files'
);

module.exports = { upLoadSignUp, uploadCreateService };
