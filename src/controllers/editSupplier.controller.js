const { Supplier, Category } = require('../db');

const editSupplierController = async (
  id,
  name,
  email,
  description,
  address,
  cellphone,
  categories
) => {
  let transaction;
  try {
    // Buscar el proveedor existente por su ID
    const updatedSupplier = await Supplier.findByPk(id, {
      include: Category, // Esto cargaría las categorías asociadas al proveedor
    });
    if (!updatedSupplier) {
      throw new Error('El Proveedor no existe');
    }

    // Actualizar los campos del proveedor
    Object.assign(updatedSupplier, {
      name,
      email,
      description,
      address,
      cellphone,
    });

    // Verificar si todas las categorías existen en la tabla Category
    const categoryNames = Array.isArray(categories) ? categories : [categories];
    const findCategories = await Category.findAll({
      where: { name: categoryNames },
    });
    //console.log('findCategories:', findCategories);
    // console.log('categoryNames:', categoryNames);
    if (findCategories.length !== categoryNames.length) {
      const existingCategories = findCategories.map(
        (category) => category.name
      );

      const missingCategories = categoryNames.filter(
        (name) => !existingCategories.includes(name)
      );
      throw new Error(
        `Las siguientes categorías no existen: ${missingCategories.join(', ')}`
      );
    }

    // Iniciar una transacción para garantizar la atomicidad de la operación
    transaction = await Supplier.sequelize.transaction();

    // Guardar los cambios en el proveedor
    await updatedSupplier.save({ transaction });

    // Desvincular todas las categorías actuales del proveedor
    console.log('updatedSupplier.categories: ', updatedSupplier.Categories);

    await updatedSupplier.removeCategories(updatedSupplier.Categories, {
      transaction,
    });
    console.log('Añadiendo nuevas categorías al proveedor...');
    // Enlazar el proveedor a las nuevas categorías en la tabla intermedia CategorySupplier
    await updatedSupplier.addCategories(findCategories, { transaction });

    // Confirmar la transacción
    await transaction.commit();

    return updatedSupplier;
  } catch (error) {
    // Si ocurre un error, deshacer la transacción
    if (transaction) {
      await transaction.rollback();
    }
    throw error;
  }
};

module.exports = editSupplierController;
