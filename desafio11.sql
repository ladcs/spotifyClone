CREATE VIEW cancoes_premium AS
SELECT
SO.SONG AS `nome`,
COUNT(SH.USER_ID) AS 'reproducoes'
FROM
SpotifyClone.SONGS SO
INNER JOIN
SpotifyClone.SONG_HISTORY AS SH ON SH.SONG_ID = SO.SONG_ID
INNER JOIN
SpotifyClone.USERS AS U ON U.USER_ID = SH.USER_ID
INNER JOIN
SpotifyClone.SUBSCRIPTION AS SU ON SU.SERVICE_ID = U.SERVICE_ID
WHERE 
SU.SERVICE_ID IN (2, 3)
GROUP BY `nome`
ORDER BY `nome`;
