-- Utilisation des opérateurs pour filtrer les données par genre et calculer des statistiques
SELECT 
    COUNT(Session_ID) AS count_of_sessions, 
    AVG(Duration_Watched) AS average_duration_watched,
    MAX(Duration_Watched) AS maximum_duration_watched, 
    MIN(Duration_Watched) AS minimum_duration_watched
FROM Streaming
WHERE Genre = 'Action' OR Genre = 'Comedy';

-- Filtrage par âge et statut d'abonnement, en ne sélectionnant que les utilisateurs Premium de moins de 30 ans
SELECT 
    Genre,
    COUNT(Session_ID) AS count_of_sessions, 
    AVG(Duration_Watched) AS average_duration_watched
FROM Streaming
WHERE (Subscription_Status = 'Premium' AND Age < 30)
GROUP BY Genre;

-- Sélection des utilisateurs premium qui ont regardé plus de 60 minutes
SELECT * FROM Streaming
WHERE Subscription_Status = 'Premium' AND Duration_Watched > 60;

-- Filtrage par genre et pays
SELECT * FROM Streaming
WHERE Genre = 'Comedy' AND Country = 'USA';



