USE controle_compras;

/* Criando uma nova tabela. */
CREATE TABLE COMPRADORES (
id int PRIMARY KEY IDENTITY NOT NULL,
nome nvarchar(200),
endereco nvarchar(200),
telefone nvarchar(30)
);

/* Inserindo dados. */
INSERT INTO COMPRADORES VALUES ('Guilherme Silveira', 'rua vergueiro, 3185', '12345678');
INSERT INTO COMPRADORES VALUES ('Gabriel Ferreira', 'av paulista , 2543', '87654321');

SELECT * FROM COMPRADORES;

/* Adicionando a coluna comprador_id. */
ALTER TABLE COMPRAS ADD comprador_id int;

/* Definindo a foreign key. */
ALTER TABLE COMPRAS
ADD CONSTRAINT FK_Compras_CompradorID FOREIGN KEY (comprador_id) REFERENCES COMPRADORES(id);

SP_HELP COMPRAS;

/* Distribuindo as COMPRAS entre os 2 COMPRADORES. */
UPDATE COMPRAS SET comprador_id = 1 WHERE id < 22;
UPDATE COMPRAS SET comprador_id = 2 WHERE id > 21;

SELECT * FROM COMPRAS;

/* Exibindo o nome do comprador e o valor de todas as suas COMPRAS até a data X. */
SELECT nome, valor
FROM COMPRAS
INNER JOIN COMPRADORES ON COMPRAS.comprador_id = COMPRADORES.id
WHERE data < '2010-08-09';

/* Exibindo a compra e o comprador. */
SELECT * FROM COMPRAS
INNER JOIN COMPRADORES ON COMPRAS.comprador_id = COMPRADORES.id
WHERE comprador_id = 2;

/* Exibe o nome do comprador e a soma de todas as suas COMPRAS. */
SELECT COMPRADORES.nome, SUM(valor) AS soma_compras
FROM COMPRAS
INNER JOIN COMPRADORES ON COMPRAS.comprador_id = COMPRADORES.id
GROUP BY COMPRADORES.nome;
