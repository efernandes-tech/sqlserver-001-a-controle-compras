USE controle_compras;

/* Busca todos os dados da tabela. */
SELECT * FROM COMPRAS;

/* Busca dados filtrados e ordenados de acordo com a data. */
SELECT valor, observacoes, data FROM COMPRAS WHERE data >= '2008-12-15' ORDER BY data;

/* Busca dados entre datas. */
SELECT * FROM COMPRAS WHERE data BETWEEN '2008-12-15' AND '2010-12-15';

/* Busca dados que iniciam com 'LANCHONETE' AND entre os valores. */
SELECT * FROM COMPRAS WHERE valor >= 15.0 AND valor <= 35.0 AND observacoes LIKE 'LANCHONETE%';

/* Busca dados recebidos OR com valor maior que 5000. */
SELECT * FROM COMPRAS WHERE recebida = 1 OR valor > 5000;

/* Busca dados combinando AND com OR, com auxilo dos () para determina a precedencia. */
SELECT * FROM COMPRAS WHERE (valor >= 1000 AND valor <= 3000) OR (valor > 5000);

/* Busca dados já recebidos. */
SELECT * FROM COMPRAS WHERE recebida = 1;

/* SQL Server tmb aceita 'TRUE' ou 'FALSE', desde que entre ''. */
SELECT * FROM COMPRAS WHERE recebida = 'TRUE';

/* Busca todos os dados que NÃO tem o valor igual a X. */
SELECT * FROM COMPRAS WHERE NOT valor = 108;
