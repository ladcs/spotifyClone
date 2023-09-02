CREATE VIEW historico_reproducao_usuarios AS
SELECT
L.LOGIN AS `usuario`,
S.SONG AS `nome`
FROM
SpotifyClone.SONG_HISTORY AS SH
INNER JOIN
SpotifyClone.USERS AS L ON SH.USER_ID = L.USER_ID
INNER JOIN
SpotifyClone.SONGS AS S ON S.SONG_ID = SH.SONG_ID
ORDER BY `usuario`, `nome`;
