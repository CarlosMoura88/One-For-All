SELECT COUNT(h.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.historic AS h
ON u.user_id = h.user_id
WHERE u.name = "Bill";