SELECT us.`name` AS usuario, IF(MAX(YEAR(hi.reproduction_date)) > 2020, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.historic AS hi
ON us.user_id = hi.user_id
GROUP BY usuario;
