USE controle_compras;

/* Altera observacoes dos dados da data X. */
UPDATE COMPRAS SET observacoes = 'preparando o natal' WHERE data = '2010-12-20';

SELECT * FROM COMPRAS WHERE data = '2010-12-20';

/* Altera o valor das compras feitas antes da data X. */
UPDATE COMPRAS SET valor = valor + 10 WHERE data < '2009-06-01';

SELECT * FROM COMPRAS WHERE data < '2009-06-01';

/* Altera 2 campos dos dados. */
UPDATE COMPRAS SET
observacoes = 'entregue antes de 2011',
recebida = 'TRUE'
WHERE data BETWEEN '2009-07-01' AND '2010-07-01';

SELECT * FROM COMPRAS WHERE data BETWEEN '2009-07-01' AND '2010-07-01';
