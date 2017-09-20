USE controle_compras;

/* Calcula a média das compras realizadas antes da data X. */
SELECT AVG(valor) FROM COMPRAS WHERE data < '2009-05-12';

/* Calcula a qtd de compras recebidas antes da data X. */
SELECT COUNT(1) FROM COMPRAS WHERE data < '2009-05-12' AND recebida = 1;

/* Calcula todas as compras separando entre as recebidas. */
SELECT recebida, SUM(valor) FROM COMPRAS GROUP BY recebida;
