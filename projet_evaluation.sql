-- Active: 1698415370372@@127.0.0.1@8889@projet_evaluation
CREATE DATABASE projet_evaluation;
USE projet_evaluation;

-- Création de la table fruits
CREATE TABLE fruits (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    couleur VARCHAR(255),
    poids_moyen FLOAT,
    PRIMARY KEY (id)
);

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

CREATE TABLE legumes (
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    nom VARCHAR(255),
    couleur VARCHAR(255),
    poids_moyen FLOAT
);

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





-- Exercice : Réorganisation d'une Base de Données "fruits_legumes"

-- Problème Actuel : La base de données "fruits_legumes" présente actuellement des problèmes de conception et d'organisation. Elle stocke des informations sur les fruits et les légumes, mais la structure actuelle ne permet pas de gérer efficacement les données.

-- Objectif : Réorganiser la base de données "fruits_legumes" en créant une nouvelle table "aliments" pour stocker des informations générales sur les aliments, une table "types_d_aliment" pour classer les aliments en catégories (fruits, céréales, légumes, etc.), et une table "couleurs" pour stocker des informations sur les couleurs des aliments. Vous devez également créer les relations appropriées entre ces tables.


-- 1. Création de la Table "aliments" :
--     * Créez une nouvelle table nommée "aliments" avec les champs suivants :
--     * id (clé primaire, auto-incrémentée)
--     * nom (chaine de caractères, non nulle)
--     * poids_moyen (nombre à virgule flottante, non nul)
--     * calories (entier, non nul)
--     * couleur (identifiant de couleur lié à la table "couleurs")


CREATE TABLE aliments (
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    nom VARCHAR(255),
    couleur VARCHAR(255),
    poids_moyen FLOAT,
    calories INT NOT NULL
);

-- 2. Création de la Table "types_d_aliment" :
--     * Créez une nouvelle table nommée "types_d_aliment" avec les champs suivants :
--     * id (clé primaire, auto-incrémentée)
--     * nom (chaine de caractères, non nulle)

CREATE TABLE types_d_aliment (
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    nom VARCHAR(255)
);

ALTER TABLE types_d_aliment
MODIFY nom VARCHAR(255) NOT NULL;

-- 3. Création de la Table "couleurs" :
--     * Créez une nouvelle table nommée "couleurs" avec les champs suivants :
--     * id (clé primaire, auto-incrémentée)
--     * nom (chaine de caractères, non nulle)
--     * hexadecimal_rvb (chaine de caractères de 7 caractères, non nulle)

INSERT INTO types_d_aliment(nom)
VALUES
('fruit'),
('legume'),
('céréales');




CREATE TABLE couleurs (
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    nom VARCHAR(255) NOT NULL,
    hexadecimal_rvb VARCHAR(7) NOT NULL
);

-- 4. Création des Relations :
-- * Ajoutez les clés étrangères nécessaires pour relier la table "aliments" à "types_d_aliment" et "couleurs".

--Pour relier la table "aliments" à "types_d_aliment" :

ALTER TABLE aliments
ADD type_id INT,
ADD FOREIGN KEY (type_id) REFERENCES types_d_aliment(id);

--Cela ajoute une colonne "type_id" à la table "aliments" et crée une clé étrangère liée à l'ID de la table "types_d_aliment."

--Pour relier la table "aliments" à "couleurs" :
ALTER TABLE aliments
ADD couleur_id INT,
ADD FOREIGN KEY (couleur_id) REFERENCES couleurs(id);

--Cela ajoute une colonne "couleur_id" à la table "aliments" et crée une clé étrangère liée à l'ID de la table "couleurs."


SELECT * FROM aliments, couleurs,types_d_aliment ;

--5. Copie des Données : copiez les données des la tables "fruits" et "legumes" vers la table "aliments". 

INSERT INTO aliments(nom, poids_moyen, calories)
SELECT nom, poids_moyen, calories FROM fruits; 

INSERT INTO aliments(nom, poids_moyen, calories)
SELECT nom, poids_moyen, calories FROM legumes; 

ALTER TABLE aliments
ADD type VARCHAR (255);


-- 6. Exemple de Données :
-- Vous pouvez insérer des données dans la table "couleurs" en utilisant la requête fournie. Assurez-vous de fournir un exemple de données pour chaque table nouvellement créée.

INSERT INTO
    couleurs (nom, hexadecimal_rvb)
VALUES 
('Orange', '#FFA500'),
('Bleu', '#0000FF'), 
('Marron', '#8B4513'), 
('Noir', '#000000'), 
('Rose', '#FFC0CB'), 
('Rouge', '#FF0000'), 
('Vert', '#008000'), 
('Violet', '#8A2BE2');


--7. Mettre à Jour les Colonnes "type_id" et "couleur_id" ainsi que couleur et type :
-- Mettez à jour la colonne "type_id" de la table "aliments" en fonction du type d'aliment (fruit, légume, etc.) en utilisant une requête UPDATE basée sur une sous-requête SELECT.





UPDATE aliments
SET type_id = (
    SELECT id
    FROM types_d_aliment
    WHERE nom = "fruit"
)
WHERE nom IN (
    SELECT nom
    FROM fruits
);

 OU

UPDATE aliments
JOIN types_d_aliment ON types_d_aliment.nom = 'fruit'
SET aliments.type_id = types_d_aliment.id
WHERE aliments.nom IN (SELECT nom FROM fruits);


UPDATE aliments
JOIN types_d_aliment ON types_d_aliment.nom = 'legume'
SET aliments.type_id = types_d_aliment.id
WHERE aliments.nom IN (SELECT nom FROM legumes);


UPDATE aliments
JOIN types_d_aliment ON types_d_aliment.nom = 'fruit'
SET aliments.type = types_d_aliment.nom
WHERE aliments.nom IN (SELECT nom FROM fruits);

UPDATE aliments
JOIN types_d_aliment ON types_d_aliment.nom = 'legume'
SET aliments.type = types_d_aliment.nom
WHERE aliments.nom IN (SELECT nom FROM legumes);


-- faire la même chose pour les couleurs


UPDATE aliments
JOIN fruits ON aliments.nom = fruits.nom
SET aliments.couleur = fruits.couleur;

UPDATE aliments
JOIN legumes ON aliments.nom = legumes.nom
SET aliments.couleur = legumes.couleur;