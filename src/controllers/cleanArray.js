const cleanArray = (arr) =>
  arr.map((elem) => {
    return {
      idMeli: elem.body.id,
      name: elem.body.title,
      priceML: elem.body.price,
      quantity: elem.body.available_quantity,
      quantityML: elem.body.available_quantity,
      files: elem.body.pictures[0].url,
      pictures: elem.body.pictures.map((picture) => picture.url),
    };
  });

module.exports = cleanArray;
