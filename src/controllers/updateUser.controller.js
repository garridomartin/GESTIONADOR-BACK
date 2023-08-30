const { User } = require('../db');
const firebaseUploader = require('../utils/firebaseUploader');
const hashPassword = require('../utils/hashPassword');

const updateUser = async (
  id,
  name,
  password,
  cellPhone,
  birthDay,
  cuil,
  file
) => {
  try {
    // Obtener los valores actuales del usuario
    const currentUser = await User.findOne({ where: { id: id } });

    // Crear un objeto para almacenar las actualizaciones
    const updates = {};

    // Verificar si se proporcionaron nuevos valores y aplicar las actualizaciones si es necesario
    if (name) updates.name = name;
    if (password) updates.password = await hashPassword(password);
    if (cellPhone) updates.cellPhone = cellPhone;
    if (birthDay) updates.birthDay = birthDay;
    if (cuil) updates.cuil = cuil;
    if (file) updates.profilePict = await firebaseUploader(file);

    // Combinar los valores actuales con las actualizaciones
    const updatedUser = { ...currentUser.toJSON(), ...updates };

    // Actualizar el usuario en la base de datos
    await User.update(updatedUser, { where: { id: id } });

    return updatedUser; // Retorna el usuario actualizado
  } catch (error) {
    console.error('Error updating user:', error);
    throw new Error('Error updating user');
  }
};

module.exports = updateUser;
