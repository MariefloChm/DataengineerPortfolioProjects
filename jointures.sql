-- Jointure pour montrer les genres les plus populaires par pays
SELECT 
    L.Country, 
    S.Genre, 
    COUNT(*) AS Count_Views
FROM Streaming S
INNER JOIN Users U ON S.User_ID = U.User_ID
INNER JOIN Location L ON U.Location_ID = L.Location_ID
GROUP BY L.Country, S.Genre
ORDER BY L.Country, COUNT(*) DESC;

-- Jointure pour montrer les top villes pour chaque genre de vidéo
SELECT 
    L.City, 
    S.Genre, 
    COUNT(*) AS Count_Views
FROM Streaming S
INNER JOIN Users U ON S.User_ID = U.User_ID
INNER JOIN Location L ON U.Location_ID = L.Location_ID
GROUP BY L.City, S.Genre
ORDER BY S.Genre, COUNT(*) DESC;

-- Jointure pour montrer les top utilisateurs dans les principales villes
SELECT 
    U.User_ID,
    U.First_Name,
    U.Last_Name,
    L.City,
    COUNT(*) AS Total_Watches
FROM Streaming S
INNER JOIN Users U ON S.User_ID = U.User_ID
INNER JOIN Location L ON U.Location_ID = L.Location_ID
WHERE L.City IN ('New York', 'Los Angeles', 'Paris', 'London', 'Tokyo')
GROUP BY U.User_ID, U.First_Name, U.Last_Name, L.City
ORDER BY COUNT(*) DESC;

-- Analyse des préférences de genre par sexe
SELECT u.Gender, s.Genre, COUNT(*) AS Total_Watches
FROM Users u
JOIN Streaming s ON u.User_ID = s.User_ID
GROUP BY u.Gender, s.Genre;
