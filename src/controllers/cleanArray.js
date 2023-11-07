// cleanArray
const cleanArray = (arr) =>
  arr
    .filter(
      (elem) =>
        elem &&
        elem.body &&
        elem.body.pictures &&
        elem.body.pictures[0] &&
        elem.body.pictures[0].url
    )
    .map((elem) => {
      const allPictures = {
        thumbnail: elem.body.thumbnail,
        pictures: elem.body.pictures.map((picture) => picture.url),
      };
      return {
        name: elem.body.title,
        priceML: elem.body.price,
        quantity: elem.body.available_quantity,
        quantityML: elem.body.available_quantity,
        idMeli: elem.body.id,
        files: allPictures,
      };
    });

module.exports = cleanArray;
