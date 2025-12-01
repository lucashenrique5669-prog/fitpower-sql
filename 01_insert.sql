INSERT INTO Plano (nome_plano, valor_mensal, duracao_meses)
VALUES ('Mensal', 99.90, 1), ('Trimestral', 249.90, 3), ('Anual', 799.90, 12);
INSERT INTO Aluno (nome, cpf, data_nascimento, endereco, telefone, id_plano)
VALUES ('Carlos Henrique', '12345678901', '1990-02-10', 'Rua A, 100', '99999-1000', 1),
('Maria Souza', '98765432100', '1988-05-22', 'Rua B, 200', '99999-2000', 2),
('Ana Paula', '45678912300', '1995-11-10', 'Rua C, 300', '99999-3000', 3);
INSERT INTO Instrutor (nome, cref) VALUES ('Renato Silva', 'CREF12345'), ('Juliana Dias', 'CREF54321');
INSERT INTO Treino (id_aluno, id_instrutor, nome_treino, data_inicio)
VALUES (1, 1, 'Hipertrofia A', '2025-01-10'), (2, 2, 'Emagrecimento B', '2025-01-15');
INSERT INTO Exercicio (nome, grupo_muscular)
VALUES ('Supino Reto', 'Peito'), ('Agachamento', 'Pernas'), ('Puxada Frontal', 'Costas');
INSERT INTO TreinoExercicio (id_treino, id_exercicio, series, repeticoes)
VALUES (1, 1, 4, 12), (1, 3, 4, 10), (2, 2, 5, 15);
INSERT INTO Pagamento (id_aluno, data_pagamento, valor, status_pagamento)
VALUES (1, '2025-01-05', 99.90, 'Pago'), (2, '2025-01-07', 249.90, 'Atrasado'), (3, '2025-01-08', 799.90, 'Pago');