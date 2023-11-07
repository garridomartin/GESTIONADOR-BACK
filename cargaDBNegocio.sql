

 \copy "Users" FROM 'C:\Users\elgra\Documents\01-PROYECTO-GESTIONADOR\Back\Users.csv' DELIMITER ',' CSV HEADER;
ALTER SEQUENCE "Users_id_seq" RESTART WITH 4;

\copy "IntervalStatuses" FROM 'C:\Users\elgra\Documents\01-PROYECTO-GESTIONADOR\Back\IntervalStatuses.csv' DELIMITER ',' CSV HEADER;
ALTER SEQUENCE "Categories_id_seq" RESTART WITH 1;
