USE controle_compras;

/* Exclui dados do seguinte intervalo (menor AND maior data). */
DELETE FROM COMPRAS WHERE DATA BETWEEN '2009-03-05' AND '2009-03-20';

SELECT * FROM COMPRAS WHERE DATA BETWEEN '2009-03-05' AND '2009-03-20';
