USE controle_compras;

/* Alterando o valor padrao de uma coluna. */
ALTER TABLE COMPRAS ADD DEFAULT '0' FOR RECEBIDA;

SP_HELP COMPRAS;
