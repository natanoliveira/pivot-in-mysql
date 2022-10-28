# pivot-in-mysql
Instrução SQL "PIVOT" no MySQL

Alguns bancos de dados (por exemplo, SQL Server) têm suporte nativo para pivôs, mas o MySQL, infelizmente, não suporta a função Pivot. Um dos métodos para contornar isso e criar uma tabela dinâmica no MySQL é usar a instrução SELECT com a expressão CASE.

Para isso, você precisa criar uma instrução SELECT com a função agregada, adicionar uma instrução CASE dentro dessa função e, em seguida, adicionar uma cláusula GROUP BY.

Também é possível criar uma tabela dinâmica no MySQL usando a instrução IF dentro da função agregada.
