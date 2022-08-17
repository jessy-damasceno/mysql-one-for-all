-- Active: 1660740770631@@127.0.0.1@3307@SpotifyClone
SELECT
  ar.artist_name AS artista,
  al.album_name AS album,
  COUNT(f.follower_artist_id) AS seguidores
FROM `SpotifyClone`.artist AS ar
JOIN `SpotifyClone`.album AS al ON al.album_artist_id = ar.artist_id
JOIN `SpotifyClone`.follower AS f ON f.follower_artist_id = ar.artist_id
GROUP BY f.follower_artist_id, al.album_name
ORDER BY seguidores DESC, artista, album;