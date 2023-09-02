const dotenv = require('dotenv');
dotenv.config();
const { Sequelize } = require('sequelize');
const fs = require('fs');
const path = require('path');
const { DB_USER, DB_PASSWORD, DB_HOST, DB_PORT, DB_TABLE, DB_DEPLOY } =
  process.env;

//↓↓↓COMENTAR PARA USA LA BASE DE DATOS LOCAL, ESTO ES LA DB DEPLOYADA EN RAILWAY
/*
const sequelize = new Sequelize(DB_DEPLOY, {
  logging: false,
  native: false,
});
*/
//DESCOMENTAR PARA USAR LOCAL
const sequelize = new Sequelize(
  `postgres://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_TABLE}`,
  {
    logging: false,
    native: false,
  }
);

const basename = path.basename(__filename);

const modelDefiners = [];

fs.readdirSync(path.join(__dirname, '/models'))
  .filter(
    (file) =>
      file.indexOf('.') !== 0 && file !== basename && file.slice(-3) === '.js'
  )
  .forEach((file) => {
    modelDefiners.push(require(path.join(__dirname, '/models', file)));
  });

modelDefiners.forEach((model) => model(sequelize));

let entries = Object.entries(sequelize.models);
let capsEntries = entries.map((entry) => [
  entry[0][0].toUpperCase() + entry[0].slice(1),
  entry[1],
]);
sequelize.models = Object.fromEntries(capsEntries);

const { User, Sale, Product, SoldProduct, Supplier, Category } =
  sequelize.models;

// Relaciones entre Sale y User
Sale.belongsTo(User, { as: 'buyer', foreignKey: 'buyer_id' });
Sale.belongsTo(User, { as: 'seller', foreignKey: 'seller_id' });

// Relación entre Sale y Product a través de SoldProduct
Sale.belongsToMany(Product, {
  through: SoldProduct,
  foreignKey: 'sale_id',
  as: 'products',
});
Product.belongsToMany(Sale, {
  through: SoldProduct,
  foreignKey: 'product_id',
  as: 'sales',
});

// Relación entre SoldProduct, Sale y Product
Sale.hasMany(SoldProduct, { foreignKey: 'sale_id' });
SoldProduct.belongsTo(Sale, { foreignKey: 'sale_id' });
SoldProduct.belongsTo(Product, { foreignKey: 'product_id' });
Product.hasMany(SoldProduct, { foreignKey: 'product_id' });

// Relación entre User y SoldProduct (Usuarios como Vendedores)
User.hasMany(SoldProduct, { foreignKey: 'seller_id' });
SoldProduct.belongsTo(User, { as: 'seller', foreignKey: 'seller_id' });

//Relación entre Product y Suppliers
Product.belongsToMany(Supplier, { through: 'ProductSupplier' });
Supplier.belongsToMany(Product, { through: 'ProductSupplier' });

//Relación entre Category y Suppliers
Category.belongsToMany(Supplier, { through: 'CategorySupplier' });
Supplier.belongsToMany(Category, { through: 'CategorySupplier' });

// Relación entre Category y Products
Category.belongsToMany(Product, { through: 'CategoryProduct' });
Product.belongsToMany(Category, { through: 'CategoryProduct' });

module.exports = {
  ...sequelize.models,
  conn: sequelize,
};
