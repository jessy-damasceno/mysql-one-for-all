-- Active: 1660740770631@@127.0.0.1@3307@SpotifyClone
SELECT
    COUNT(DISTINCT songs.song_id) AS cancoes, 
    COUNT(DISTINCT artists.artist_id) AS artistas, 
    COUNT(DISTINCT albums.album_id) AS albuns 
FROM 
    SpotifyClone.song AS songs, 
    SpotifyClone.artist AS artists,
    SpotifyClone.album AS albums;