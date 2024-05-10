-- CTE pour calculer la durée moyenne de visionnage par genre
WITH AvgWatchTime AS (
    SELECT Genre, AVG(Duration_Watched) AS Average_Time
    FROM Streaming
    GROUP BY Genre
)
SELECT Genre, Average_Time FROM AvgWatchTime
WHERE Average_Time > 30;

-- CTE pour trouver la durée moyenne de visionnage pour les 5 genres les plus populaires
WITH TopGenres AS (
    SELECT TOP 5 Genre, SUM(Duration_Watched) AS Total_Duration
    FROM Streaming
    GROUP BY Genre
    ORDER BY Total_Duration DESC
)
SELECT Genre, AVG(Total_Duration) AS Avg_Duration
FROM TopGenres
GROUP BY Genre;


-- CTE pour examiner la distribution des genres de vidéos par pays
WITH GenreDistribution AS (
    SELECT 
        L.Country, 
        S.Genre, 
        COUNT(*) AS Count_Videos
    FROM Streaming S
    INNER JOIN Users U ON S.User_ID = U.User_ID
    INNER JOIN Location L ON U.Location_ID = L.Location_ID
    GROUP BY L.Country, S.Genre
)
SELECT Country, Genre, Count_Videos
FROM GenreDistribution
ORDER BY Country, Count_Videos DESC;

-- CTE pour trouver les utilisateurs les plus engagés dans les principales villes
WITH TopViewers AS (
    SELECT 
        L.City, 
        U.User_ID, 
        SUM(S.Duration_Watched) AS Total_Watched
    FROM Streaming S
    INNER JOIN Users U ON S.User_ID = U.User_ID
    INNER JOIN Location L ON U.Location_ID = L.Location_ID
    GROUP BY L.City, U.User_ID
    ORDER BY Total_Watched DESC
)
SELECT City, User_ID, Total_Watched
FROM TopViewers
WHERE City IN ('New York', 'Los Angeles', 'Tokyo')
ORDER BY Total_Watched DESC;

