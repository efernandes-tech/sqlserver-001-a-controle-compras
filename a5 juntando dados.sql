USE controle_compras;

/* Criando uma nova tabela. */
create table COMPRADORES (
    id int primary key identity not null,
    nome nvarchar(200),
    endereco nvarchar(200),
    telefone nvarchar(30)
);

/* Inserindo dados. */
insert into compradores values ('Guilherme Silveira', 'rua vergueiro, 3185', '12345678');
insert into compradores values ('Gabriel Ferreira', 'av paulista , 2543', '87654321');

SELECT * FROM COMPRADORES;

/* Adicionando a coluna comprador_id. */
alter table compras add comprador_id int;

/* Definindo a foreign key. */
alter table compras
	add constraint FK_Compras_CompradorID foreign key (comprador_id)
	references compradores(id);

SP_HELP COMPRAS;

/* Distribuindo as compras entre os 2 compradores. */
update compras set comprador_id = 1 where id < 22;
update compras set comprador_id = 2 where id > 21;

SELECT * FROM COMPRAS;

/* Exibindo o nome do comprador e o valor de todas as suas compras até a data X. */
 SELECT NOME, VALOR
 FROM COMPRAS
 INNER JOIN COMPRADORES ON COMPRAS.COMPRADOR_ID = COMPRADORES.ID
 WHERE DATA < '2010-08-09';

/* Exibindo a compra e o comprador. */
SELECT * FROM COMPRAS INNER JOIN COMPRADORES ON COMPRAS.COMPRADOR_ID = COMPRADORES.ID WHERE COMPRADOR_ID = 2
