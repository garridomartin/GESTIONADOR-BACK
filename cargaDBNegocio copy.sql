\copy "Suppliers" FROM 'C:\Users\elgra\Documents\01-PROYECTO-GESTIONADOR\Back\Suppliers.csv' DELIMITER ',' CSV HEADER;
ALTER SEQUENCE "Suppliers_id_seq" RESTART WITH 5;


\copy "Categories" FROM 'C:\Users\elgra\Documents\01-PROYECTO-GESTIONADOR\Back\Categories.csv' DELIMITER ',' CSV HEADER;
ALTER SEQUENCE "Categories_id_seq" RESTART WITH 4;


\copy "Products" FROM 'C:\Users\elgra\Documents\01-PROYECTO-GESTIONADOR\Back\Products.csv' DELIMITER ',' CSV HEADER;
ALTER SEQUENCE "Products_id_seq" RESTART WITH 9;

 \copy "Users" FROM 'C:\Users\elgra\Documents\01-PROYECTO-GESTIONADOR\Back\Users.csv' DELIMITER ',' CSV HEADER;
ALTER SEQUENCE "Users_id_seq" RESTART WITH 4;

\copy "IntervalStatuses" FROM 'C:\Users\elgra\Documents\01-PROYECTO-GESTIONADOR\Back\IntervalStatuses.csv' DELIMITER ',' CSV HEADER;
ALTER SEQUENCE "Categories_id_seq" RESTART WITH 1;

INSERT INTO public."CategorySupplier" ("CategoryId", "SupplierId", "createdAt", "updatedAt")
VALUES 
  (1, 1, now(), now()), 
  (2, 2, now(), now()),
  (3, 3, now(), now()),
  (1, 4, now(), now()),
  (2, 3, now(), now()),
  (3, 2, now(), now()),
  (1, 2, now(), now());


INSERT INTO public."CategoryProduct" ("CategoryId", "ProductId", "createdAt", "updatedAt")
VALUES 
  (1, 1, now(), now()),
  (1, 2, now(), now()),
  (3, 3, now(), now()),
  (2, 4, now(), now()),
  (2, 5, now(), now()),
  (2, 6, now(), now()),
  (2, 7, now(), now()),
  (3, 8, now(), now());


INSERT INTO public."ProductSupplier" ("ProductId", "SupplierId", "createdAt", "updatedAt")
VALUES 
  (1, 1, now(), now()),
  (2, 2, now(), now()),
  (3, 3, now(), now()),
  (4, 4, now(), now()),
  (5, 4, now(), now()),
  (6, 3, now(), now()),
  (7, 2, now(), now());