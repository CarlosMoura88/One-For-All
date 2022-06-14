SELECT title AS nome_musica, 
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(title, 'Streets', 'Code Review'), 'Her Own', 'Trybe'), 'Inner Fire', 'Project'), 'Silly', 'Nice'), 'Circus', 'Pull Request')
AS novo_nome FROM SpotifyClone.songs
WHERE title LIKE '%Streets%' OR title LIKE '%Her Own%' OR title LIKE '%Inner Fire%' OR title LIKE '%Silly%' OR title LIKE '%Circus%'

ORDER BY nome_musica;