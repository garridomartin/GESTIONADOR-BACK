const { Supplier, Category } = require('../db');

const createSupplierController = async (
  name,
  email,
  description,
  address,
  cellphone,
  categories
) => {
  try {
    // Verificar si todas las categorías existen en la tabla Category
    const categoryNames = Array.isArray(categories) ? categories : [categories];
    //console.log('categoryNames:', categoryNames);
    const findCategories = await Category.findAll({
      where: { name: categoryNames },
    });
    console.log('findCategories:', findCategories);
    // Verificar que todas las categorías especificadas existen
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

    // Si todas las categorías existen, crea el proveedor
    const findSupplier = await Supplier.findAll({
      where: { name: name },
    });

    if (findSupplier.length > 0) {
      throw new Error('Ya existe un Proveedor con ese nombre');
    }

    const newSupplier = await Supplier.create({
      name: name,
      email: email,
      description: description,
      address: address,
      cellphone: cellphone,
    });

    // Enlazar el proveedor a las categorías en la tabla intermedia CategorySupplier
    await newSupplier.addCategories(findCategories);

    return newSupplier;
  } catch (error) {
    throw error;
  }
};

module.exports = createSupplierController;
