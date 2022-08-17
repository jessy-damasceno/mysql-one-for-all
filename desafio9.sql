SELECT
  COUNT(hi.history_person_id) AS quantidade_musicas_no_historico
FROM 
  `SpotifyClone`.history AS hi
JOIN 
  `SpotifyClone`.users AS us
  ON hi.history_person_id = us.user_id
WHERE
  us.user_name = 'Barbara Liskov';