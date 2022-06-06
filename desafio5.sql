SELECT son.title AS cancao, COUNT(his.song_id) AS reproducoes
FROM SpotifyClone.songs AS son
INNER JOIN SpotifyClone.historic AS his
ON son.song_id = his.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;