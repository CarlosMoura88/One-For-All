SELECT COUNT(s.song_id) AS cancoes, COUNT(DISTINCT a.artist_id) AS artistas, COUNT(DISTINCT ab.album_id) AS albuns 
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.albums AS ab
ON s.album_id = ab.album_id
INNER JOIN SpotifyClone.artists AS a
ON ab.artist_id = a.artist_id;