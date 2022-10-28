SELECT
  ano,
  [1]  AS 'JAN',
  [2]  AS 'FEV',
  [3]  AS 'MAR',
  [4]  AS 'ABR',
  [5]  AS 'MAI',
  [6]  AS 'JUN',
  [7]  AS 'JUL',
  [8]  AS 'AGO',
  [9]  AS 'SET',
  [10] AS 'OUT',
  [11] AS 'NOV',
  [12] AS 'DEZ'
FROM Tabela AS a
PIVOT (
    SUM(valor)
    FOR IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
) AS Saida;
