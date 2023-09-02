CREATE VIEW top_2_hits_do_momento AS
SELECT
S.SONG AS `cancao`,
COUNT(SH.SONG_ID) AS `reproducoes`
FROM
SpotifyClone.SONG_HISTORY AS SH
INNER JOIN
SpotifyClone.SONGS AS S ON S.SONG_ID = SH.SONG_ID
GROUP BY SH.SONG_ID
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
