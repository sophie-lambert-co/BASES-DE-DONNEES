-- Je n'ai pas enregistré les premières requètes ... dommage

-- j'insère 10 utilisateurs avec des données fictives dans la table users :

INSERT INTO users (nom, email, mot_de_passe)
VALUES
('Alice', 'alice@example.com', 'password1'),
('Bob', 'bob@example.com', 'password2'),
('Charlie', 'charlie@example.com', 'password3'),
('Dave', 'dave@example.com', 'password4'),
('Eve', 'eve@example.com', 'password5'),
('Frank', 'frank@example.com', 'password6'),
('Grace', 'grace@example.com', 'password7'),
('Heidi', 'heidi@example.com', 'password8'),
('Ivan', 'ivan@example.com', 'password9'),
('Judy', 'judy@example.com', 'password10');

--Essayer d'ajouter un nvl utilisateur sans email = ERREUR

--Essayer d'ajouter de nouveaux utilisateurs sans nom = ERREUR

--Essayer d'ajouter de nouveaux utilisateurs sans password = ERREUR




-- Ajouter une colonne "genre" dans la table "users" et renseignez les valeurs M ou F avec une requête appropriée.

ALTER TABLE users ADD genre CHARACTER;

UPDATE users
SET genre = 'F'
WHERE nom = 'Alice' OR nom = 'Charlie' OR nom = 'Eve' OR nom = 'Grace' OR nom = 'Heidi' OR nom = 'Judy';
UPDATE users
SET genre = 'M'
WHERE nom NOT IN ('Alice', 'Charlie', 'Eve', 'Grace', 'Heidi', 'Judy');

