const cleanArray = (arr) =>
  arr.map((elem) => {
    return {
      idMeli: elem.body.id,
      name: elem.body.title,
      priceML: elem.body.price,
      stockML: elem.body.available_quantity,
      files: elem.body.thumbnail,
      pictures: elem.body.pictures.map((picture) => picture.url),
    };
  });

module.exports = cleanArray;
