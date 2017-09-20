USE controle_compras;

/* Calcula a média das compras realizadas antes da data X. */
SELECT AVG(VALOR) FROM COMPRAS WHERE DATA < '2009-05-12';

/* Calcula a qtd de compras recebidas antes da data X. */
SELECT COUNT(1) FROM COMPRAS WHERE DATA < '2009-05-12' AND RECEBIDA = 1;

/* Calcula todas as compras separando entre as recebidas. */
SELECT RECEBIDA, SUM(VALOR) FROM COMPRAS GROUP BY RECEBIDA;
