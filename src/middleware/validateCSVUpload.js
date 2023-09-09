const { body } = require('express-validator');
const csv = require('csv-parser');
const { Readable } = require('stream');

const validateCSVUpload = [
  (req, res, next) => {
    if (req.file && req.file.mimetype === 'text/csv') {
      const expectedColumns = [
        'id',
        'name',
        'cost',
        'priceML',
        'priceEComm',
        'priceLocal',
        'shortDescription',
        'longDescription',
      ];

      const csvData = [];

      // Convierte la cadena de texto en un flujo de datos
      const fileStream = Readable.from([req.file.buffer.toString('utf8')]);

      // Utiliza csv-parser para analizar el archivo CSV
      fileStream
        .pipe(csv({ separator: ',' })) // Configura el separador como coma
        .on('data', (row) => {
          csvData.push(row);
        })
        .on('end', () => {
          // Verifica las columnas en cada fila del CSV
          for (const row of csvData) {
            for (const column of expectedColumns) {
              if (!(column in row)) {
                return res.status(400).json({
                  error: `La columna '${column}' está ausente en el archivo CSV.`,
                });
              }
            }
          }

          // Si llegas a este punto, el archivo es un CSV válido
          next();
        });
    } else {
      return res.status(400).json({ error: 'El archivo no es un CSV válido.' });
    }
  },
];

module.exports = validateCSVUpload;
