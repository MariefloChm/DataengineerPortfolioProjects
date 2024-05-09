-- Sélection des utilisateurs premium qui ont regardé plus de 60 minutes
SELECT * FROM Streaming
WHERE Subscription_Status = 'Premium' AND Duration_Watched > 60;

-- Filtrage par genre et pays
SELECT * FROM Streaming
WHERE Genre = 'Comedy' AND Country = 'USA';

-- Utilisateurs dans une tranche d'âge spécifique regardant des films HD
SELECT * FROM Streaming
WHERE Age BETWEEN 18 AND 25 AND Playback_Quality = 'HD';
