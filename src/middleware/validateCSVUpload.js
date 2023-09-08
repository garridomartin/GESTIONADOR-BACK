const { body } = require('express-validator');

const validateCSVUpload = [
  body('csv').custom((value, { req }) => {
    if (!value) {
      throw new Error('No se ha proporcionado un archivo CSV.');
    }

    // Verifica que el archivo sea un archivo CSV válido
    if (!value.buffer.toString().includes('csv')) {
      throw new Error('El archivo no es un archivo CSV válido.');
    }

    // Verifica que las columnas estén en el orden y con los nombres correctos
    const expectedColumns = [
      'id',
      'name',
      'shortDescription',
      'longDescription',
      'cost',
      'priceML',
      'priceEComm',
      'priceLocal',
    ];
    const csvColumns = value.buffer.toString('utf8').split('\n')[0].split(',');

    for (let i = 0; i < expectedColumns.length; i++) {
      if (csvColumns[i] !== expectedColumns[i]) {
        throw new Error(
          'Las columnas en el archivo CSV no coinciden con el formato esperado.'
        );
      }
    }

    return true;
  }),
];

module.exports = validateCSVUpload;
