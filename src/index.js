require('dotenv').config();
const server = require('./app.js');
const { conn } = require('./db.js');
const PORT = process.env.PORT || 3001;

conn.sync({ alter: true }).then(async () => {
//!bdd NO se reinicia con el server↑↑↑
//conn.sync({ force: true }).then(async () => {
  //!bdd se reinicia con el server↑↑↑

  server.listen(PORT, () => {
    console.log(`Server listening at http://localhost:${PORT}`);
  });
});
