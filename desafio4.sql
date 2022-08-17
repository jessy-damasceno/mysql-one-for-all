-- Active: 1660740770631@@127.0.0.1@3307@SpotifyClone
SELECT
    DISTINCT u.user_name AS usuario,
    IF (MAX (YEAR (h.history_reproduction_date)) < 2021, 'Usuário inativo', 'Usuário ativo') AS status_usuario
FROM SpotifyClone.users AS u
    JOIN SpotifyClone.history AS h ON h.history_person_id = u.user_id
GROUP BY u.user_name
ORDER BY u.user_name;