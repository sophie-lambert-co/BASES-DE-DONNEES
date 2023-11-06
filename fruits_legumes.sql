-- Création de la base de données
CREATE DATABASE fruits_legumes;
USE fruits_legumes;

-- Création de la table fruits
CREATE TABLE fruits (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    couleur VARCHAR(255),
    poids_moyen FLOAT,
    PRIMARY KEY (id)
);

-- Insertion de données d'exemple dans la table fruits
INSERT INTO fruits (nom, couleur, poids_moyen)
VALUES
('Pomme', 'Rouge', 0.1),
('Banane', 'Jaune', 0.15),
('Orange', 'Orange', 0.2),
('Fraise', 'Rouge', 0.02);

-- Création de la table legumes
CREATE TABLE legumes (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    couleur VARCHAR(255),
    poids_moyen FLOAT,
    PRIMARY KEY (id)
);

-- Insertion de données d'exemple dans la table legumes
INSERT INTO legumes (nom, couleur, poids_moyen)
VALUES
('Carotte', 'Orange', 0.1),
('Brocoli', 'Vert', 0.3),
('Pomme de terre', 'Marron', 0.2),
('Tomate', 'Rouge', 0.15);

 

INSERT INTO fruits (nom, couleur, poids_moyen)
VALUES
('Abricot', 'Orange', 0.05),
('Ananas', 'Marron', 1),
('Avocat', 'Vert', 0.2),
('Cassis', 'Noir', 0.01),
('Cerise', 'Rouge', 0.01),
('Citron', 'Jaune', 0.15),
('Clémentine', 'Orange', 0.08),
('Coing', 'Jaune', 0.3),
('Datte', 'Marron', 0.02),
('Figue', 'Violet', 0.05),
('Framboise', 'Rouge', 0.01),
('Grenade', 'Rouge', 0.2),
('Groseille', 'Rouge', 0.01),
('Kiwi', 'Marron', 0.07),
('Litchi', 'Rose', 0.02),
('Mandarine', 'Orange', 0.08),
('Mangue', 'Orange', 0.3),
('Melon', 'Vert', 1),
('Mirabelle', 'Jaune', 0.02),
('Mûre', 'Noir', 0.01),
('Myrtille', 'Bleu', 0.01),
('Nectarine', 'Orange', 0.1),
('Noix de coco','Marron' ,1 ),
('Olive','Vert' ,0.02 ),
('Pamplemousse','Jaune' ,0.3 ),
('Papaye','Orange' ,1 ),
('Pastèque','Vert' ,2 ),
('Pêche','Orange' ,0.15 ),
('Poire','Vert' ,0.2 ),
('Pomelo','Jaune' ,0.25 ),
('Prune','Violet' ,0.04 ),
('Raisin','Violet' ,0.02 );

 

INSERT INTO legumes (nom, couleur, poids_moyen)
VALUES
('Artichaut', 'Vert', 0.5),
('Asperge', 'Vert', 0.1),
('Aubergine', 'Violet', 0.2),
('Betterave', 'Rouge', 0.3),
('Blette', 'Vert', 0.3),
('Brocoli', 'Vert', 0.3),
('Carotte', 'Orange', 0.1),
('Céleri', 'Vert', 0.4),
('Champignon', 'Marron', 0.05),
('Chou-fleur', 'Blanc', 1),
('Chou de Bruxelles', 'Vert', 0.02),
('Concombre', 'Vert', 0.2),
('Courgette', 'Vert', 0.3),
('Échalote', 'Marron', 0.05),
('Endive', 'Blanc', 0.2),
('Épinard', 'Vert', 0.2),
('Fenouil','Vert' ,0.4 ),
('Haricot vert','Vert' ,0.05 ),
('Laitue','Vert' ,0.3 ),
('Maïs','Jaune' ,1 ),
('Navet','Blanc' ,0.2 ),
('Oignon','Marron' ,0.1 ),
('Panais','Blanc' ,0.3 ),
('Petit pois','Vert' ,0.01 ),
('Poireau','Vert' ,0.3 ),
('Poivron','Rouge' ,0.2 ),
('Pomme de terre','Marron' ,0.2 ),
('Potiron','Orange' ,2 ),
('Radis','Rouge' ,0.02 ),
('Tomate','Rouge' ,0.15 );

 

-- Ajout de la colonne calories dans la table fruits
ALTER TABLE fruits
ADD COLUMN calories FLOAT;

-- Ajout de la colonne calories dans la table legumes
ALTER TABLE legumes
ADD COLUMN calories FLOAT;

 

-- Mise à jour des calories pour les fruits
UPDATE fruits
SET calories = 
    CASE
        WHEN nom = 'Pomme' THEN 52
        WHEN nom = 'Banane' THEN 89
        WHEN nom = 'Orange' THEN 47
        WHEN nom = 'Fraise' THEN 33
        WHEN nom = 'Abricot' THEN 48
        WHEN nom = 'Ananas' THEN 50
        WHEN nom = 'Avocat' THEN 160
        WHEN nom = 'Cassis' THEN 63
        WHEN nom = 'Cerise' THEN 50
        WHEN nom = 'Citron' THEN 29
        WHEN nom = 'Clémentine' THEN 47
        WHEN nom = 'Coing' THEN 57
        WHEN nom = 'Datte' THEN 282
        WHEN nom = 'Figue' THEN 74
        WHEN nom = 'Framboise' THEN 53
        WHEN nom = 'Grenade' THEN 83
        WHEN nom = 'Groseille' THEN 56
        WHEN nom = 'Kiwi' THEN 61
        WHEN nom = 'Litchi' THEN 66
        WHEN nom = 'Mandarine' THEN 53
        WHEN nom = 'Mangue' THEN 60
        WHEN nom = 'Melon' THEN 34
        WHEN nom = 'Mirabelle' THEN 67
        WHEN nom = 'Mûre' THEN 43
        WHEN nom = 'Myrtille' THEN 57
        WHEN nom = 'Nectarine' THEN 44
        WHEN nom = 'Noix de coco' THEN 354 
        WHEN nom = 'Olive' THEN 115 
        WHEN nom = 'Pamplemousse' THEN 42 
        WHEN nom = 'Papaye' THEN 43 
        WHEN nom = 'Pastèque' THEN 30 
        WHEN nom = 'Pêche' THEN 39 
        WHEN nom = 'Poire' THEN 57 
        WHEN nom = 'Pomelo' THEN 38 
        WHEN nom = 'Prune' THEN 46 
        ELSE calories -- keep the original value if the fruit is not in the list above.
    END;

-- Mise à jour des calories pour les légumes
UPDATE legumes
SET calories =
    CASE 
        WHEN nom='Artichaut' THEN 47 
        WHEN nom='Asperge' THEN 20 
        WHEN nom='Aubergine' THEN 25 
        WHEN nom='Betterave' THEN 43 
        WHEN nom='Blette' THEN 19 
        WHEN nom='Brocoli' THEN 34 
        WHEN nom='Carotte' THEN 41 
        WHEN nom='Céleri' THEN 16 
        WHEN nom='Champignon' THEN 22 
        WHEN nom='Chou-fleur' THEN 25 
        WHEN nom='Chou de Bruxelles' THEN 43 
        WHEN nom='Concombre' THEN 15 
        WHEN nom='Courgette' THEN 17 
        WHEN nom='Échalote' THEN 72 
        WHEN nom='Endive' THEN 17 
        WHEN nom='Épinard' THEN 23 
        WHEN nom='Fenouil' THEN 31 
        WHEN nom='Haricot vert' THEN 31 
        WHEN nom='Laitue' THEN 15 
        WHEN nom='Maïs' THEN 86 
        WHEN nom='Navet' THEN 28 
        WHEN nom='Oignon' THEN 40 
        WHEN nom='Panais' THEN 75 
        WHEN nom='Petit pois' THEN 81  
     ELSE calories -- keep the original value if the vegetable is not in the list above.
    END;


    --créer une requête qui affiche tous les légumes qui ont un poid moyen supérieur à 400g 
SELECT nom
FROM legumes
WHERE poids_moyen > 400;


-- La requête que vous avez fournie effectue les actions suivantes :

-- La requête sélectionne les colonnes "nom" et "couleur" de la table "legumes".

-- Calcul  la moyenne des calories par poids moyen : Le résultat est renommé en tant que "cal_par_poid" en utilisant l'alias AS. Cela signifie que pour chaque légume, on obtient la moyenne des calories par unité de poids moyen.

-- Les résultats sont regroupés par les colonnes "nom" et "couleur".

-- Tri par "cal_par_poid" en ordre décroissant 

-- La requête renvoie seulement les 3 premiers résultats

-- cette requête renvoie les trois légumes ayant la plus grande moyenne de calories par unité de poids moyen, en spécifiant leur nom, leur couleur et cette moyenne.

SELECT nom, couleur, AVG(calories/poids_moyen) AS cal_par_poid
FROM legumes
GROUP BY nom, couleur
ORDER BY cal_par_poid DESC
LIMIT 3;


-- Sélectionner tous les fruits de couleur orange


SELECT 'Légume' AS Type, nom
FROM fruits_legumes.legumes
WHERE couleur = 'Orange'

-- Sélectionnez tous les légumes  de couleur Vert

SELECT 'Légume' AS Type, nom
FROM fruits_legumes.legumes
WHERE couleur = 'Vert'

-- Sélectionner dans les tables fruits et légumes tous ceux dont le poids moyen est plus petit que 300g.

SELECT 'Légume' AS Type, nom
FROM fruits_legumes.legumes
WHERE poids < 0.3
UNION
SELECT 'Fruit' AS Type, nom
FROM fruits_legumes.fruits
WHERE poids < 0.3;


-- exercice 1 : Joins et Aggrégats
-- Trouvez le nombre total de fruits et légumes de chaque couleur. Triez les résultats par le nombre total en ordre décroissant.


SELECT couleur, Type, COUNT(*) AS nombre_total
FROM (
    SELECT 'Légume' AS Type, couleur FROM fruits_legumes.legumes
    UNION ALL
    SELECT 'Fruit' AS Type, couleur FROM fruits_legumes.fruits
) AS données_combinées
GROUP BY couleur, Type
ORDER BY nombre_total DESC;


-- SELECT couleur, Type, COUNT(*) AS nombre_total :

-- SELECT : Sélectionner des données de la base de données.
-- couleur, Type : Les colonnes que nous souhaitons inclure dans les résultats.
-- COUNT(*) : Compter le nombre total d'enregistrements (lignes) dans chaque groupe.
-- AS nombre_total : Assigner un alias "nombre_total" au résultat de COUNT(*) pour le nommer plus clairement dans les résultats.
-- FROM (...) AS données_combinées :
-- FROM : Spécifie la source de données à partir de laquelle nous extrayons les informations.
-- (...) AS données_combinées : Une sous-requête qui fusionne les données des tables "fruits" et "légumes" et les renomme "données_combinées" pour une utilisation ultérieure.
-- GROUP BY couleur, Type :
-- GROUP BY : Grouper les données en fonction des colonnes spécifiées.
-- couleur, Type : Les colonnes par lesquelles nous regroupons les données, c'est-à-dire "couleur" et "Type".
-- ORDER BY nombre_total DESC :
-- ORDER BY : Trier les résultats en fonction d'une colonne spécifique.
-- nombre_total : La colonne par laquelle nous trierons les résultats, c'est-à-dire le nombre total.
-- DESC : En ordre décroissant (du plus grand au plus petit).
-- En résumé, la requête extrait des données de la base de données, les groupe par couleur et type (légumes ou fruits), compte le nombre total d'enregistrements pour chaque combinaison de couleur et type, puis trie les résultats en fonction du nombre total, les affichant du plus grand au plus petit.




-- Exercice 2 : Fonctions d'agrégation
-- Quelle est la moyenne, le minimum et le maximum du poids moyen des fruits ? Faites de même pour les légumes.

SELECT  MIN(poids_moyen) AS plus_petite_valeur, MAX(poids_moyen) AS plus_grande_valeur, AVG(poids_moyen) AS moyenne
FROM fruits;

SELECT  MIN(poids_moyen) AS plus_petite_valeur, MAX(poids_moyen) AS plus_grande_valeur, AVG(poids_moyen) AS moyenne
FROM legumes;

-- Exercice 3 : Sous-requêtes
-- Trouvez le fruit le plus lourd et le légume le plus léger. Affichez leur nom, couleur et poids moyen.
SELECT nom, couleur, poids_moyen
FROM fruits
WHERE
    poids_moyen = (SELECT MAX(poids_moyen) FROM fruits)
    OR poids_moyen = (SELECT MIN(poids_moyen) FROM fruits);


    SELECT nom, couleur, poids_moyen
FROM legumes
WHERE
    poids_moyen = (SELECT MAX(poids_moyen) FROM legumes)
    OR poids_moyen = (SELECT MIN(poids_moyen) FROM legumes);


-- Exercice 4 : Groupe et filtre
-- Affichez les couleurs des fruits qui ont plus de trois représentants. Combien y a-t-il de fruits pour chaque couleur ?

    SELECT couleur, COUNT(*) AS nombre_de_fruits
    FROM fruits
    GROUP BY couleur;
    SELECT couleur
    FROM fruits
    GROUP BY couleur
    HAVING COUNT(*)>3;
   
 SELECT couleur, COUNT(*) AS nombre_de_legumes
    FROM legumes
    GROUP BY couleur;
    SELECT couleur
    FROM legumes
    GROUP BY couleur
    HAVING COUNT(*)>3;
   



-- Exercice 5 : Mise à jour conditionnelle
-- Supposons qu'il y ait eu une erreur dans la saisie des données et que tous les fruits de couleur "Rouge" devraient en réalité avoir la couleur "Vermillon". Mettez à jour la table en conséquence.

UPDATE fruits
SET couleur = " vermillon"
WHERE couleur = "rouge";

-- Ajout de la table céréale

CREATE TABLE cereales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    couleur VARCHAR(255),
    poids_moyen FLOAT,
    calories INT
);



INSERT INTO cereales (nom, couleur, poids_moyen, calories)
VALUES
    ('Blé', 'Brun', 0.03, 340),
    ('Avoine', 'Brun clair', 0.03, 389),
    ('Orge', 'Brun', 0.03, 354),
    ('Maïs', 'Jaune', 0.3, 365),
    ('Riz', 'Blanc', 0.02, 130),
    ('Seigle', 'Brun foncé', 0.03, 335),
    ('Millet', 'Jaune', 0.02, 378),
    ('Sorgho', 'Rouge', 0.03, 329),
    ('Quinoa', 'Blanc', 0.02, 368),
    ('Amarante', 'Rouge', 0.02, 371);


 -- Ajouter le soja dans la table céréales avec un requête en cherchant les infos sur internet.


INSERT INTO cereales (nom, couleur, poids_moyen, calories)
    VALUES ('Soja', 'Vert', 0.05, 295);


-- En suite utilisez cette reqûete pour créer la table recettes

CREATE TABLE recettes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    instructions TEXT,
    fruit_id INT,
    legume_id INT,
    cereale_id INT,
    FOREIGN KEY (fruit_id) REFERENCES fruits(id),
    FOREIGN KEY (legume_id) REFERENCES legumes(id),
    FOREIGN KEY (cereale_id) REFERENCES cereales(id)
);

-- Créer une nouvelle base de données nommée recette

CREATE DATABASE recette;



-- Trouver un moyen d'Insérer le contenu des tables fruits ,legumes et céréales dans la nouvelle table aliments qui contiendra tous les aliments .
CREATE VIEW aliments AS
SELECT * FROM fruits
UNION
SELECT * FROM legumes
UNION
SELECT * FROM cereales;


-- ce n'est pas la bonne méthode, j'efface donc cette vue 

DROP VIEW aliments;






CREATE TABLE aliments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    couleur VARCHAR(255),
    poids_moyen FLOAT,
    calories INT,
    type_aliment VARCHAR(20)
);


INSERT INTO aliments (nom, couleur, poids_moyen, calories, type_aliment)
SELECT nom, couleur, poids_moyen, calories, 'céréale' FROM cereales;


INSERT INTO aliments (nom, couleur, poids_moyen, calories, type_aliment)
SELECT nom, couleur, poids_moyen, calories, 'fruit' FROM fruits;


INSERT INTO aliments (nom, couleur, poids_moyen, calories, type_aliment)
SELECT nom, couleur, poids_moyen, calories, 'legume' FROM legumes;


-- Enfin créer la requête pour créer la table recette avec les bonnes relations pour que l'on puisse composer des recettes avec des aliments

CREATE TABLE recettes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    instructions TEXT,
    aliment_id INT,
    FOREIGN KEY (aliment_id) REFERENCES aliments(id)
);

ALTER TABLE recettes
ADD nom_aliment INT;



-- Créez une table de liaison, par exemple "recettes_aliments", avec deux colonnes : "recette_id" et "aliment_id". Ces colonnes font référence aux ID des recettes et des aliments.

CREATE TABLE recettes_aliments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recette_id INT,
    aliment_id INT,
    FOREIGN KEY (recette_id) REFERENCES recettes(id),
    FOREIGN KEY (aliment_id) REFERENCES aliments(id)
);

-- Lorsque vous créez une recette qui utilise des aliments, insérez d'abord la recette dans la table "recettes" pour obtenir son ID. Ensuite, insérez les ID des aliments utilisés dans la table de liaison "recettes_aliments".

INSERT INTO recettes ( nom, instructions)
VALUES ( "salade de fruits", "Lavez, épluchez puis coupez les fruits en morceaux de 1cm X 1cm, soupoudrez de jus de citron, et de sucre glace");


SET @recette_id = LAST_INSERT_ID();

INSERT INTO recettes_aliments (recette_id, aliment_id)
VALUES
( @recette_id,33),
( @recette_id,31),
( @recette_id,32);


SELECT recettes.nom, recettes.instructions, aliments.nom
FROM recettes
INNER JOIN recettes_aliments ON recettes.id = recettes_aliments.recette_id
INNER JOIN aliments ON recettes_aliments.aliment_id = aliments.id
WHERE recettes.id = @recette_id;