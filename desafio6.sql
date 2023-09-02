CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(P.SERVICE_PRICE), 2) AS 'faturamento_minimo',
ROUND(MAX(P.SERVICE_PRICE), 2) AS 'faturamento_maximo',
ROUND(AVG(P.SERVICE_PRICE), 2) AS 'faturamento_medio',
ROUND(SUM(P.SERVICE_PRICE), 2) AS 'faturamento_total'
FROM
SpotifyClone.SUBSCRIPTION P
INNER JOIN
SpotifyClone.USERS U ON U.SERVICE_ID = P.SERVICE_ID;
