USE sql_avancado;

/* Exibe a média das notas por aluno, além de uma coluna com a diferença entre a média do aluno e a média geral. Use sub-queries para isso. */
SELECT a.nome,
AVG(n.nota) AS media,
AVG(n.nota) - (SELECT AVG(n1.nota) FROM nota n1) AS diferenca
FROM nota n
JOIN resposta r ON r.id = n.resposta_id
JOIN aluno a ON a.id = r.aluno_id
GROUP BY a.nome;

/* Exibe a quantidade de matrículas por curso. Além disso, exibe a divisão entre matrículas naquele curso e matrículas totais. */
SELECT c.nome, COUNT(m.id),
(SELECT COUNT(id) FROM matricula) / COUNT(m.id)
FROM curso c
JOIN matricula m ON m.curso_id = c.id
GROUP BY c.nome;
