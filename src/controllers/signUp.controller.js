const { User } = require('../db.js');
const firebaseUploader = require('../utils/firebaseUploader');
const hashPassword = require('../utils/hashPassword.js');
const template = require('../utils/templateCreation.js');
const sendEmailNotification = require('../utils/senderMail.js');
const fs = require('fs');
const path = require('path');

const signUpController = async (
  name,
  password,
  cellPhone,
  birthDay,
  cuil,
  email,
  files,
  typeNotification
) => {
  try {
    const uploadPicture = await firebaseUploader(files);

    const existingUser = await User.findOne({ where: { email } });

    if (existingUser) {
      return { error: 'El email ya está registrado' };
    }
    const passwordSignUp = await hashPassword(password);
    //console.log('previo a crear el usuario:', name, cellPhone, birthDay);
    const newUser = await User.create({
      name: name,
      password: passwordSignUp,
      cellPhone: cellPhone,
      birthDay: birthDay,
      cuil: cuil,
      email: email,
      profilePict: uploadPicture,
    });

    await newUser.save();

    const filePath = path.join(
      __dirname,
      '..',
      'views',
      'creationUserNotification.hbs'
    );

    const templateUserCreation = fs.readFileSync(filePath, 'utf-8');

    const compiledTemplate = template(templateUserCreation, { name: name });

    const emailResult = await sendEmailNotification(
      typeNotification,
      newUser.email,
      compiledTemplate
    );
    return {
      name: newUser.name,
      email: newUser.email,
      emailResult: emailResult,
    };
  } catch (error) {
    console.error('Error during user registration:', error);
    return { error: 'Ocurrió un error durante el proceso de registro' };
  }
};

module.exports = signUpController;
