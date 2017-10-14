USE sql_avancado;

/* Devolva todos os alunos, cursos e a média de suas notas. Lembre-se de agrupar por aluno e por curso. Filtre também pela nota: só mostre alunos com nota média menor do que 5. */
SELECT a.nome, c.nome, AVG(n.nota)
FROM nota n
JOIN resposta r ON r.id = n.resposta_id
    JOIN exercicio e ON e.id = r.exercicio_id
        JOIN secao s ON s.id = e.secao_id
            JOIN curso c ON c.id = s.curso_id
    JOIN aluno a ON a.id = r.aluno_id
GROUP BY c.nome, a.nome
HAVING AVG(n.nota) < 5;

/* ExibE todos os cursos e a sua quantidade de matrículas. Mas, exiba somente cursos que tenham mais de 1 matrícula. */
SELECT c.nome, COUNT(m.id) FROM curso c JOIN matricula m ON c.id = m.curso_id GROUP BY c.nome HAVING COUNT(m.id) > 1;

/* Exiba o nome do curso e a quantidade de seções que existe nele. Mostra só cursos com mais de 3 seções. */
SELECT c.nome, COUNT(s.id) FROM curso c JOIN secao s ON c.id = s.curso_id GROUP BY c.id, c.nome HAVING COUNT(s.id) > 3;
