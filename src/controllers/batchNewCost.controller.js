const { Product } = require('../db');
const csv = require('csv-parser');
const { Readable } = require('stream');

// Función para preparar los datos CSV
const prepareCSVData = (csvString) => {
  const csvData = [];
  const fileStream = Readable.from([csvString]);

  return new Promise((resolve, reject) => {
    fileStream
      .pipe(csv({ separator: ',' })) // Configura el separador como coma
      .on('data', (row) => {
        csvData.push(row);
      })
      .on('end', () => {
        resolve(csvData);
      })
      .on('error', (error) => {
        reject(error);
      });
  });
};

const batchNewCostController = async (csvData) => {
  try {
    // Preparar los datos CSV
    const csvRows = await prepareCSVData(csvData);

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

    for (const row of csvRows) {
      // Verificar las columnas en cada fila del CSV
      for (const column of expectedColumns) {
        if (!(column in row)) {
          return {
            success: false,
            error: `La columna '${column}' está ausente en el archivo CSV.`,
          };
        }
      }

      const id = row.id;
      const cost = parseFloat(row.cost);
      const priceML = parseFloat(row.priceML);
      const priceEComm = parseFloat(row.priceEComm);
      const priceLocal = parseFloat(row.priceLocal);

      // Verificar si el valor de cost es un número válido
      if (!isNaN(cost)) {
        await Product.update(
          { cost, priceML, priceEComm, priceLocal },
          { where: { id } }
        );
        console.log(
          `Se actualizaron el costo y los diferentes precios para el registro con ID ${id}.`
        );
      } else {
        console.log(
          `Los valores de costo y precios para el registro con ID ${id} no es válido.`
        );
      }
    }

    console.log('batchNewCostController finalizado.');
    return { success: true, message: 'Proceso de actualización finalizado.' };
  } catch (error) {
    console.error('Error en batchNewCostController:', error);
    return { success: false, error: 'Error interno del servidor.' };
  }
};

module.exports = batchNewCostController;
