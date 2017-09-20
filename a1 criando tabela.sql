USE controle_compras;

CREATE TABLE COMPRAS(
    id int PRIMARY KEY IDENTITY NOT NULL,
    valor decimal(18, 1) NULL,
    data date NULL,
    observacoes nvarchar(200) NULL,
    recebida bit NULL
);
