-- Vérification des valeurs NULL
SELECT COUNT(*) AS Missing_Values, 'User_ID' AS Column_Name FROM Streaming WHERE User_ID IS NULL
UNION ALL
SELECT COUNT(*) AS Missing_Values, 'Duration_Watched' AS Column_Name FROM Streaming WHERE Duration_Watched IS NULL
UNION ALL
SELECT COUNT(*) AS Missing_Values, 'Video_ID' AS Column_Name FROM Streaming WHERE Video_ID IS NULL;

-- Remplacement des valeurs NULL par des valeurs par défaut
UPDATE Streaming SET Duration_Watched = 0 WHERE Duration_Watched IS NULL;

-- Suppression des lignes où des informations essentielles manquent
DELETE FROM Streaming WHERE User_ID IS NULL OR Video_ID IS NULL;

-- Correction des formats de données incorrects (ex. remplacement de virgules par des points)
UPDATE Streaming
SET Ratings = REPLACE(Ratings, ',', '.')
WHERE Ratings LIKE '%,%';
