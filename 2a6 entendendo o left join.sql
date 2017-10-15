USE sql_avancado;

/* ExibE todos os alunos e suas possíveis respostas. Exibe mesmo que eles não tenham respondido nenhuma pergunta. */
SELECT a.nome, r.resposta_dada
FROM aluno a
LEFT JOIN resposta r ON a.id = r.aluno_id;

/* Exibe agora todos os alunos e suas possíveis respostas para o exercício com ID = 1, mesmo que ele não tenha respondido o exercício. */
SELECT a.nome, r.resposta_dada
FROM aluno a
LEFT JOIN resposta r ON a.id = r.aluno_id AND r.exercicio_id = 1;
