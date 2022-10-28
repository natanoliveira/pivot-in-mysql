SELECT
  ano AS 'ANO',
  SUM(CASE WHEN a.mes = '1' THEN ROUND(a.valor,2) ELSE 0 END) AS 'JAN',
  SUM(CASE WHEN a.mes = '2' THEN ROUND(a.valor,2) ELSE 0 END) AS 'FEV',
  SUM(CASE WHEN a.mes = '3' THEN ROUND(a.valor,2) ELSE 0 END) AS 'MAR',
  SUM(CASE WHEN a.mes = '4' THEN ROUND(a.valor,2) ELSE 0 END) AS 'ABR',
  SUM(CASE WHEN a.mes = '5' THEN ROUND(a.valor,2) ELSE 0 END) AS 'MAI',
  SUM(CASE WHEN a.mes = '6' THEN ROUND(a.valor,2) ELSE 0 END) AS 'JUN',
  SUM(CASE WHEN a.mes = '7' THEN ROUND(a.valor,2) ELSE 0 END) AS 'JUL',
  SUM(CASE WHEN a.mes = '8' THEN ROUND(a.valor,2) ELSE 0 END) AS 'AGO',
  SUM(CASE WHEN a.mes = '9' THEN ROUND(a.valor,2) ELSE 0 END) AS 'SET',
  SUM(CASE WHEN a.mes = '10' THEN ROUND(a.valor,2) ELSE 0 END) AS 'OUT',
  SUM(CASE WHEN a.mes = '11' THEN ROUND(a.valor,2) ELSE 0 END) AS 'NOV',
  SUM(CASE WHEN a.mes = '12' THEN ROUND(a.valor,2) ELSE 0 END) AS 'DEZ',
  (SELECT ROUND(SUM(a.valor),2) FROM TabelaB AS b WHERE a.mes = b.mes GROUP BY b.mes) AS 'TOTAL GERAL'
FROM
  TabelaA AS a
GROUP BY
  a.mes
ORDER BY
  SUM(a.valor) DESC
