USE sql_avancado;

/* Query traz apenas os dois primeiros alunos da tabela. */
SELECT TOP 2 nome FROM aluno;

/* SQL que devolve os 3 primeiros alunos que o e-mail termine com o domínio ".com". */
SELECT TOP 3 nome, email FROM aluno WHERE email LIKE '%.com';

/* Devolve os 2 primeiros alunos que o e-mail termine com ".com", ordenando por nome. */
SELECT TOP 2 NOME, EMAIL FROM aluno WHERE email LIKE '%.com' ORDER BY nome;
