
const server = require('./src/app.js');

const PORT = 3001;



  server.listen(PORT, () => {
    console.log(`Server listening at http://localhost:${PORT}`);
  });

