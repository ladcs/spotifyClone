DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(U_ID INT)
RETURNS INT READS SQL DATA
BEGIN
RETURN (
SELECT 
COUNT(*) quantidade_musicas_no_historico
FROM SpotifyClone.SONG_HISTORY
WHERE USER_ID = U_ID);
END $$

DELIMITER $$;
