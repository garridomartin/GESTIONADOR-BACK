const { Supplier } = require('./src/db'); // Asegúrate de que la ruta sea la correcta

// Crea una instancia de Supplier (puede ser un proveedor existente o nuevo)
const supplierInstance = Supplier.build();

// Imprime las propiedades y métodos de la instancia de Supplier
console.log(Object.getOwnPropertyNames(supplierInstance.__proto__));
