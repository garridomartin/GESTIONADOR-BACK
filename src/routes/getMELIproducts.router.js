const { Router } = require('express');
const router = Router();
const getMELIproducts = require('../handlers/getMELIproducts.handler');
const getMELIproductsIDs = require('../middleware/getMELIproductsIDs');

router.get('/', /*getMELIproductsIDs,*/ getMELIproducts);

module.exports = router;
