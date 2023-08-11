const { User } = require('../db.js');
const subirAFirebase = require('../utils/firebaseUploader');
const encriptarContraseña = require('../utils/hashPassword.js');
const crearPlantilla = require('../utils/templateCreation.js');
const enviarNotificacionEmail = require('../utils/senderMail.js');
const fs = require('fs');
const path = require('path');
const { tokenCreated } = require('../utils/createToken.js');
const { SECRET_KEY, URL_DEPLOY_FRONT } = process.env;

const controladorRegistro = async (
  nombre,
  contraseña,
  celular,
  fechaNacimiento,
  cuil,
  correoElectronico,
  archivos,
  tipoNotificacion
) => {
  try {
    const archivoSubido = await subirAFirebase(archivos);

    const usuarioExistente = await User.findOne({
      where: { email: correoElectronico },
    });

    if (usuarioExistente) {
      return { error: 'El correo electrónico ya está registrado' };
    }

    const contraseñaEncriptada = await encriptarContraseña(contraseña);

    const nuevoUsuario = await User.create({
      name: nombre,
      password: contraseñaEncriptada,
      cellPhone: celular,
      birthDay: fechaNacimiento,
      cuil: cuil,
      email: correoElectronico,
      profilePict: archivoSubido,
    });

    await nuevoUsuario.save();

    try {
      const usuario = await User.findOne({
        where: { email: correoElectronico },
      });
      const tokenConfirmacionEmail = await tokenCreated(usuario, SECRET_KEY);
      const valorToken = tokenConfirmacionEmail.token;
      const enlaceConfirmacionEmail = `${URL_DEPLOY_FRONT}/email-confirm/${valorToken}`;

      const rutaArchivoPlantilla = path.join(
        __dirname,
        '..',
        'views',
        'creationUserNotification.hbs'
      );
      const plantillaCreacionUsuario = fs.readFileSync(
        rutaArchivoPlantilla,
        'utf-8'
      );
      const plantillaCompilada = crearPlantilla(plantillaCreacionUsuario, {
        name: nombre,
        emailConfirmationLink: enlaceConfirmacionEmail,
      });

      try {
        const resultadoEmail = await enviarNotificacionEmail(
          tipoNotificacion,
          nuevoUsuario.email,
          plantillaCompilada
        );

        return {
          name: nuevoUsuario.name,
          email: nuevoUsuario.email,
          emailResult: resultadoEmail,
        };
      } catch (error) {
        console.error('Error durante el registro del usuario:', error);
        return { error: 'Ocurrió un error durante el proceso de registro' };
      }
    } catch (error) {
      console.error('Error al crear el token de confirmación:', error);
      return { error: 'Ocurrió un error durante el proceso de registro' };
    }
  } catch (error) {
    console.error('Error durante el registro del usuario:', error);
    return { error: 'Ocurrió un error durante el proceso de registro' };
  }
};

module.exports = controladorRegistro;
