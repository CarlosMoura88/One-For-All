SELECT art.artist AS artista, alb.title AS album
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb
ON art.artist_id = alb.artist_id
WHERE artist = "Walter Phoenix"
ORDER BY album;