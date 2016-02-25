Dump de bases de données pour le projet GSB_CIQUAL.
Version 2.0 - Fabrice Missonnier

Les données initiales sont fournies en csv par l'ANSES à l'adresse
https://pro.anses.fr/tableciqual/index.htm	

Dans ce projet, les données ont été travaillées en trois versions. (1) en fichier de dump MySQL dans le dossier MySQL/Complete (fichier GSB_CIQUAL.sql)  (2) en fichier SQL pour chaque table dans le dossier MySQL/ParTable  (3) en fichier de dump MongoDB dans le dossier MongoDB

Les versions (1) et (2) sont strictement équivalentes. Les fichiers étant volumineux, il est plus simple de les éditer par table (gedit ou Netbeans plantent par exemple pour l'édition des compositions nutritionnelles).

Les fichiers de configuration de Mongify sont aussi placés dans le projet, ainsi que le fichier de configuration CentOS de MongoDB.
