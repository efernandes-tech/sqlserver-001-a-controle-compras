USE controle_compras;

/* Busca todos os dados da tabela. */
SELECT * FROM COMPRAS;

/* Busca dados filtrados e ordenados de acordo com a data. */
SELECT valor, observacoes, data FROM COMPRAS WHERE data >= '2008-12-15' ORDER BY data;

/* Busca dados entre datas. */
SELECT * FROM COMPRAS WHERE DATA BETWEEN '2008-12-15' AND '2010-12-15';

/* Busca dados que iniciam com 'LANCHONETE' AND entre os valores. */
SELECT * FROM COMPRAS WHERE VALOR >= 15.0 AND VALOR <= 35.0 AND OBSERVACOES LIKE 'LANCHONETE%';

/* Busca dados recebidos OR com valor maior que 5000. */
SELECT * FROM COMPRAS WHERE RECEBIDA = 1 OR VALOR > 5000;

/* Busca dados combinando AND com OR, com auxilo dos () para determina a precedencia. */
SELECT * FROM COMPRAS WHERE (VALOR >= 1000 AND VALOR <= 3000) OR (VALOR > 5000);

/* Busca dados já recebidos. */
SELECT * FROM COMPRAS WHERE RECEBIDA = 1;

/* SQL Server tmb aceita 'TRUE' ou 'FALSE', desde que entre ''. */
SELECT * FROM COMPRAS WHERE RECEBIDA = 'TRUE';

/* Busca todos os dados que NÃO tem o valor igual a X. */
SELECT * FROM COMPRAS WHERE NOT VALOR = 108;
