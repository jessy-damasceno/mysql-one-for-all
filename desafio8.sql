SELECT
  ar.artist_name AS artista,
  al.album_name AS album
FROM `SpotifyClone`.album AS al
JOIN `SpotifyClone`.artist AS ar ON al.album_artist_id = ar.artist_id
HAVING artista = 'Elis Regina';