SELECT
    u.user_name AS usuario,
    COUNT(h.history_music_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(s.song_duration / 60),2) AS total_minutos
FROM SpotifyClone.users AS u
    JOIN SpotifyClone.history AS h ON u.user_id = h.history_person_id
    JOIN SpotifyClone.song as s ON h.history_music_id = s.song_id
    GROUP BY u.user_name
    ORDER BY u.user_name;