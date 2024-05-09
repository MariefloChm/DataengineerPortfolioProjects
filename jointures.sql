-- Joindre la table des utilisateurs et la table des sessions pour obtenir une vue complète
SELECT u.User_ID, u.Age, u.Gender, s.Session_ID, s.Video_ID, s.Duration_Watched
FROM Users u
JOIN Streaming s ON u.User_ID = s.User_ID;

-- Analyse des préférences de genre par sexe
SELECT u.Gender, s.Genre, COUNT(*) AS Total_Watches
FROM Users u
JOIN Streaming s ON u.User_ID = s.User_ID
GROUP BY u.Gender, s.Genre;
