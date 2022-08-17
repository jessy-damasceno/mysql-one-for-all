SELECT
    so.song_name AS nome,
    COUNT(so.song_name) AS reproducoes
FROM
    `SpotifyClone`.history AS hi
    JOIN `SpotifyClone`.song AS so ON hi.history_music_id = so.song_id
    JOIN `SpotifyClone`.users AS us ON hi.history_person_id = us.user_id
WHERE
    user_plan_id = 1 || user_plan_id = 3
GROUP BY nome
ORDER BY nome;