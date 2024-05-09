-- CTE pour calculer la durée moyenne de visionnage par genre
WITH AvgWatchTime AS (
    SELECT Genre, AVG(Duration_Watched) AS Average_Time
    FROM Streaming
    GROUP BY Genre
)
SELECT Genre, Average_Time FROM AvgWatchTime
WHERE Average_Time > 30;

-- CTE en chaîne pour des analyses complexes
WITH RatedContent AS (
    SELECT Video_ID, AVG(Ratings) AS AvgRating
    FROM Streaming
    GROUP BY Video_ID
),
PopularVideos AS (
    SELECT Video_ID FROM RatedContent
    WHERE AvgRating >= 4.0
)
SELECT * FROM Streaming
WHERE Video_ID IN (SELECT Video_ID FROM PopularVideos);
