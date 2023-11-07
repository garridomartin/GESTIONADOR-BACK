//cleanArray
const cleanArray = (arr) =>
  arr.map((elem) => {
    return {
      name: elem.body.title,
      priceML: elem.body.price,
      quantity: elem.body.available_quantity,
      quantityML: elem.body.available_quantity,
      idMeli: elem.body.id,
      files: elem.body.pictures[0].url,
      pictures: elem.body.pictures.map((picture) => picture.url),
    };
  });

module.exports = cleanArray;
