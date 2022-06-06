SELECT us.`name` AS usuario, COUNT(hi.song_id) AS qtde_musicas_ouvidas, ROUND(SUM(so.seconds)/60, 2) AS total_minutos
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.historic AS hi
ON us.user_id = hi.user_id
INNER JOIN SpotifyClone.songs AS so
ON so.song_id = hi.song_id
GROUP BY usuario;
