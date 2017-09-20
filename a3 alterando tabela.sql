USE controle_compras;

/* Alterando o valor padrao de uma coluna. */
ALTER TABLE COMPRAS ADD DEFAULT '0' FOR RECEBIDA;

SP_HELP COMPRAS;

/* Alterando a coluna para não receber NULL. */
ALTER TABLE COMPRAS ALTER COLUMN OBSERVACOES NVARCHAR(200)  NOT NULL;

SP_HELP COMPRAS;