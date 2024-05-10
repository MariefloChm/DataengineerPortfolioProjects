-- Trouver les utilisateurs qui regardent plus que la durée moyenne de visionnage
SELECT User_ID, Duration_Watched
FROM Streaming
WHERE Duration_Watched > (SELECT AVG(Duration_Watched) FROM Streaming);

-- Calcul de la durée moyenne de visionnage pour les 5 genres les plus populaires
SELECT AVG(GenreData.AvgDuration) AS AverageDuration
FROM (
    SELECT Genre, AVG(Duration_Watched) AS AvgDuration
    FROM Streaming
    GROUP BY Genre
    ORDER BY SUM(Duration_Watched) DESC
    OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY
) AS GenreData;


-- Nombre de visionnages par genre dans les principales villes
SELECT City, Genre, COUNT(*) AS NumOfWatched
FROM Streaming
WHERE City IN (
    SELECT DISTINCT City
    FROM Location
)
GROUP BY City, Genre;

-- Utilisateurs les plus actifs par genre
SELECT Genre, User_ID, Total_Watched
FROM (
    SELECT Genre, User_ID, SUM(Duration_Watched) AS Total_Watched,
    RANK() OVER (PARTITION BY Genre ORDER BY SUM(Duration_Watched) DESC) AS Rank
    FROM Streaming
    GROUP BY Genre, User_ID
) AS RankedUsers
WHERE Rank = 1;

-- Utilisateurs avec le plus haut rating moyen
SELECT User_ID, AVG(Ratings) AS AvgRating
FROM Streaming
GROUP BY User_ID
HAVING AVG(Ratings) > (SELECT AVG(Ratings) FROM Streaming);
