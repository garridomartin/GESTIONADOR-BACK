const { User } = require('../db');
const { tokenCreated } = require('../utils/createToken.js');
const { SECRET_KEY, URL_DEPLOY_FRONT } = process.env;
const crearPlantilla = require('../utils/templateCreation.js');
const enviarNotificacionEmail = require('../utils/senderMail.js');
const fs = require('fs');
const path = require('path');

const loginController = async (dataUser) => {
  const { displayName, email, photos } = dataUser;
  const photoUrl = photos[0].value;

  try {
    const existingUser = await User.findOne({ where: { email: email } });

    if (existingUser) {
      const updatedDataUser = {
        ...dataUser,
        User_id: existingUser.id,
        isAdmin: existingUser.isAdmin,
        isSeller: existingUser.isSeller,
      };

      const token = tokenCreated(existingUser, SECRET_KEY);
      // console.log('updatedDataUser:', updatedDataUser);

      return {
        name: existingUser.name,
        email: existingUser.email,
        token: token,
        updatedDataUser: updatedDataUser,
      };
    } else {
      const generateUsername = (email, displayName) =>
        `@${email.split('@')[0]}-${displayName}`; //-----> added by Enok Lima for generate username

      const newUser = await User.create({
        username: generateUsername(email, displayName), //-----> added by Enok Lima for set username
        name: displayName,
        email: email,
        profilePict: photoUrl,
      });

      const updatedDataUser = {
        ...dataUser,
        User_id: newUser.id,
      };

      const token = tokenCreated(newUser, SECRET_KEY);

      const enlaceSugerenciaUser = `${URL_DEPLOY_FRONT}/editUser`;
      const rutaArchivoPlantilla = path.join(
        __dirname,
        '..',
        'views',
        'signUpGoogle.hbs'
      );

      const plantillaCreacionUsuario = fs.readFileSync(
        rutaArchivoPlantilla,
        'utf-8'
      );

      const plantillaCompilada = crearPlantilla(plantillaCreacionUsuario, {
        name: newUser.name,
        enlaceSugerenciaUser: enlaceSugerenciaUser,
      });

      const resultadoEmail = await enviarNotificacionEmail(
        'signUpGoogle',
        newUser.email,
        plantillaCompilada
      );

      return {
        name: newUser.name,
        email: newUser.email,
        emailResult: resultadoEmail,
        updatedDataUser: updatedDataUser,
        token: token,
      };
    }
  } catch (error) {
    throw error;
  }
};

module.exports = {
  loginController,
};
