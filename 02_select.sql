SELECT * FROM Aluno;
SELECT a.nome, p.nome_plano, p.valor_mensal FROM Aluno a JOIN Plano p ON a.id_plano = p.id_plano;
SELECT a.nome, t.nome_treino, t.data_inicio FROM Treino t JOIN Aluno a ON a.id_aluno = t.id_aluno;
SELECT t.nome_treino, e.nome, e.grupo_muscular FROM TreinoExercicio te
JOIN Treino t ON te.id_treino = t.id_treino
JOIN Exercicio e ON te.id_exercicio = e.id_exercicio;
SELECT a.nome, p.valor, p.status_pagamento FROM Pagamento p
JOIN Aluno a ON p.id_aluno = a.id_aluno
WHERE status_pagamento = 'Atrasado';