-- Trouver les utilisateurs qui regardent plus que la durée moyenne de visionnage
SELECT User_ID, Duration_Watched
FROM Streaming
WHERE Duration_Watched > (SELECT AVG(Duration_Watched) FROM Streaming);

-- Utilisateurs avec le plus haut rating moyen
SELECT User_ID, AVG(Ratings) AS AvgRating
FROM Streaming
GROUP BY User_ID
HAVING AVG(Ratings) > (SELECT AVG(Ratings) FROM Streaming);
