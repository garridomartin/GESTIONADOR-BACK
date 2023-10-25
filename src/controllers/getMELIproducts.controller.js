const { MELIAccesCode, MELIAccesToken } = require('../db');
const findUserById = require('./findUserById.controller');
const getToken = require('./getMELIToken.controller');

const getMELIproductsController = async (user_id, code) => {
  const user = await findUserById(user_id);
  if (!user) {
    throw new Error('No hay usuario con ese id');
  }

  let existingCode = await MELIAccesCode.findOne({
    where: { code: code, UserId: user.id },
  });

  if (existingCode) {
    console.log(
      'El código ya está registrado, contacte al administrador del sistema.'
    );
    return;
  }

  existingCode = await MELIAccesCode.create({
    code: code,
    UserId: user.id,
  });
  console.log('el codigo para generar el token fue guardado');
  await existingCode.save();
  console.log('intentando generar el primer token temporal');
  const firstToken = await getToken(code);

  console.log('esto paso por firstToken:', firstToken);
  console.log(
    'esto paso por firstToken.access_token:',
    firstToken.access_token
  );

  const newToken = await MELIAccesToken.create({
    UserMeliID: firstToken.user_id,
    acces_token: firstToken.access_token,
    refresh_token: firstToken.refresh_token,
    UserId: user.id,
  });
  await newToken.save();

  return newToken;
};

module.exports = getMELIproductsController;
