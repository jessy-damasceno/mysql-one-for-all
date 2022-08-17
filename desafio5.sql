-- Active: 1660740770631@@127.0.0.1@3307@SpotifyClone
SELECT
  s.song_name AS cancao,
  COUNT(*) AS reproducoes
FROM
  SpotifyClone.song AS s
JOIN
  SpotifyClone.history AS h ON h.history_music_id = s.song_id
GROUP BY
  h.history_music_id
ORDER BY
  reproducoes DESC,
  cancao
LIMIT 2;