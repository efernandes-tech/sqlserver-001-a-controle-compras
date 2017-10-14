USE sql_avancado;

/* Exibe todos os tipos de matrícula que existem na tabela. Usa DISTINCT para que não haja repetição. */
SELECT DISTINCT tipo FROM matricula;

/* Exibe todos os cursos e a sua quantidade de matrículas. Mas filtra por matrículas dos tipos PF ou PJ. */
SELECT c.nome, COUNT(m.id)
FROM curso c
JOIN matricula m ON c.id = m.curso_id
WHERE m.tipo IN ('PAGA_PF', 'PAGA_PJ')
GROUP BY c.nome;

/* Traz todas as perguntas e a quantidade de respostas de cada uma. Mas dessa vez, somente os cursos com ID 1 e 3. */
SELECT e.pergunta, COUNT(r.id)
FROM exercicio e
JOIN resposta r ON e.id = r.exercicio_id
JOIN secao s ON s.id = e.secao_id
    JOIN curso c ON s.curso_id = c.id
WHERE c.id IN (1,3)
GROUP BY e.pergunta;
