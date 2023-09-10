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
/*
const { Product } = require('../db');

const batchNewCostController = async (csvData) => {
  try {
    const data = csvData.split('\n');
    //console.log('data:', data);
    for (let i = 1; i < data.length; i++) {
      const row = data[i].trim(); //saco espacios en blanco del principio y final.
      if (row) {
        const columns = row.split(','); // Dividir las columnas
        const id = columns[0]; // Obtener el ID
        const cost = parseFloat(columns[2]); // Obtener y convertir el valor de cost a numérico
        const priceML = parseFloat(columns[3]);
        const priceEComm = parseFloat(columns[4]);
        const priceLocal = parseFloat(columns[5]);

        // Agregar registros de depuración

        console.log(`Row: ${row}`);
        console.log(`Columns: ${columns}`);
        console.log(`ID: ${id}`);
        console.log(`Cost: ${cost}`);
        console.log(`PriceML: ${priceML}`);
        console.log(`PriceEComm: ${priceEComm}`);
        console.log(`PriceLocal: ${priceLocal}`);

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
    }
    console.log('batchNewCostController finalizado.');
    return { success: true, message: 'Proceso de actualización finalizado.' };
  } catch (error) {
    console.error('Error en batchNewCostController:', error);
    return { success: false, error: 'Error interno del servidor.' };
  }
};

module.exports = batchNewCostController;
*/
