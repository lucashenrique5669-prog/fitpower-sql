CREATE TABLE Aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(20),
    id_plano INT NOT NULL
);
CREATE TABLE Plano (
    id_plano SERIAL PRIMARY KEY,
    nome_plano VARCHAR(50) NOT NULL,
    valor_mensal DECIMAL(10,2) NOT NULL,
    duracao_meses INT NOT NULL
);
ALTER TABLE Aluno ADD CONSTRAINT fk_plano FOREIGN KEY (id_plano) REFERENCES Plano(id_plano);
CREATE TABLE Pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    id_aluno INT NOT NULL,
    data_pagamento DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    status_pagamento VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);
CREATE TABLE Instrutor (
    id_instrutor SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cref VARCHAR(20) NOT NULL
);
CREATE TABLE Treino (
    id_treino SERIAL PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_instrutor INT NOT NULL,
    nome_treino VARCHAR(50) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_instrutor) REFERENCES Instrutor(id_instrutor)
);
CREATE TABLE Exercicio (
    id_exercicio SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    grupo_muscular VARCHAR(50) NOT NULL
);
CREATE TABLE TreinoExercicio (
    id_treino INT NOT NULL,
    id_exercicio INT NOT NULL,
    series INT NOT NULL,
    repeticoes INT NOT NULL,
    PRIMARY KEY (id_treino, id_exercicio),
    FOREIGN KEY (id_treino) REFERENCES Treino(id_treino),
    FOREIGN KEY (id_exercicio) REFERENCES Exercicio(id_exercicio)
);
CREATE TABLE AvaliacaoFisica (
    id_avaliacao SERIAL PRIMARY KEY,
    id_aluno INT NOT NULL,
    data_avaliacao DATE NOT NULL,
    peso DECIMAL(5,2),
    altura DECIMAL(4,2),
    percentual_gordura DECIMAL(5,2),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);
CREATE TABLE Frequencia (
    id_frequencia SERIAL PRIMARY KEY,
    id_aluno INT NOT NULL,
    data_entrada TIMESTAMP NOT NULL,
    data_saida TIMESTAMP,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);