SELECT s.title AS nome, COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historic AS h
	ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users AS u
	ON u.user_id = h.user_id
INNER JOIN SpotifyClone.plans AS p
	ON p.plan_id = u.plan_id
WHERE p.title = "gratuito" OR p.title = "pessoal"
GROUP BY h.song_id
ORDER BY reproducoes DESC, nome;