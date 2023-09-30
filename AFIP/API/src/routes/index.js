const { Router } = require('express');
const router = Router();

// Importa el controlador que aún debes crear
const factura = require('../controllers/factura');

// Define una ruta y su controlador
router.get('/getfactura', factura.miFuncion);

module.exports = router;
