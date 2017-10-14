USE sql_avancado;

/* Busca todos os alunos que não tenham nenhuma matrícula nos cursos. */
SELECT a.nome FROM aluno a WHERE NOT EXISTS (SELECT m.id FROM matricula m WHERE m.aluno_id = a.id);

/* Busca todos os alunos que não tiveram nenhuma matrícula nos últimos 45 dias, usando a instrução EXISTS. */
SELECT a.nome
FROM aluno a
WHERE NOT EXISTS (
    SELECT m.id
    FROM matricula m
    WHERE m.aluno_id = a.id AND m.data > DATEADD(DAY, -45, GETDATE())
);
