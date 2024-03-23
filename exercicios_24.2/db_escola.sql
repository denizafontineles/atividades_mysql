DROP DATABASE db_escola;

CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    data_de_matricula DATE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, idade, endereco, email, data_de_matricula) 
VALUES ("Maria Silva", 15, "Rua das Flores, 123", "maria@gmail.com", '2023-09-01');
INSERT INTO tb_estudantes(nome, idade, endereco, email, data_de_matricula) 
VALUES ("João Santos", 16, "Avenida Principal, 456", "joao@yahoo.com", '2023-09-01');
INSERT INTO tb_estudantes(nome, idade, endereco, email, data_de_matricula) 
VALUES ("Pedro Oliveira", 17, "Travessa dos Estudantes, 789", "pedro@uol.com", '2022-08-30');
INSERT INTO tb_estudantes(nome, idade, endereco, email, data_de_matricula) 
VALUES ("Ana Costa", 16, "Rua dos Sonhos, 987", "ana@gmail.com", '2022-08-30');
INSERT INTO tb_estudantes(nome, idade, endereco, email, data_de_matricula) 
VALUES ("Carlos Ferreira", 15, "Avenida Central, 567", "carlos@yahoo.com", '2023-09-01');
INSERT INTO tb_estudantes(nome, idade, endereco, email, data_de_matricula) 
VALUES ("Juliana Almeida", 17, "Praça da Paz, 321", "juliana@gmail.com", '2022-08-30');
INSERT INTO tb_estudantes(nome, idade, endereco, email, data_de_matricula) 
VALUES ("Luiz Oliveira", 16, "Rua das Palmeiras, 234", "luiz@outlook.com", '2023-09-01');
INSERT INTO tb_estudantes(nome, idade, endereco, email, data_de_matricula) 
VALUES ("Mariana Costa", 15, "Rua dos Passarinhos, 876", "mariana@outlook.com", '2022-08-30');

CREATE TABLE tb_notas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    serie VARCHAR(10) NOT NULL,
    ano INT NOT NULL,
    materia VARCHAR (100),
    notas DECIMAL (5,2),
	id_estudante INT,
    FOREIGN KEY (id_estudante) REFERENCES tb_estudantes(id)
);

-- Restrição para Adicionar a Chave Estrangeira de Turma
ALTER TABLE tb_notas ADD CONSTRAINT fk_notas_estudantes
FOREIGN KEY (id_estudante) REFERENCES tb_estudantes(id);

INSERT INTO tb_notas(serie, ano, materia, notas, id_estudante) 
VALUES ("9A", 2023, "Matemática", 5.75, 1);
INSERT INTO tb_notas(serie, ano, materia, notas, id_estudante) 
VALUES ("9B", 2023, "Português", 9.85, 2);
INSERT INTO tb_notas(serie, ano, materia, notas, id_estudante) 
VALUES ("3A", 2022, "Ciências", 7.25, 3);
INSERT INTO tb_notas(serie, ano, materia, notas, id_estudante) 
VALUES ("3B", 2022, "História", 6.50, 5);
INSERT INTO tb_notas(serie, ano, materia, notas, id_estudante) 
VALUES ("8A", 2024, "Geografia", 6.90, 5);
INSERT INTO tb_notas(serie, ano, materia, notas, id_estudante) 
VALUES ("8B", 2024, "Inglês", 5.30, 6);
INSERT INTO tb_notas(serie, ano, materia, notas, id_estudante) 
VALUES ("5A", 2021, "Artes", 4.75, 7);
INSERT INTO tb_notas(serie, ano, materia, notas, id_estudante) 
VALUES ("5B", 2021, "Educação Física", 8.00, 8);

SELECT tb_estudantes.nome, tb_notas.*
FROM tb_estudantes LEFT JOIN tb_notas
ON tb_notas.id_estudante = tb_notas.id
WHERE tb_notas.notas > 7.0
ORDER BY nome, id ASC;

SELECT tb_estudantes.nome, tb_notas.*
FROM tb_estudantes LEFT JOIN tb_notas
ON tb_notas.id_estudante = tb_notas.id
WHERE tb_notas.notas < 7.0
ORDER BY nome, id ASC;

UPDATE tb_notas SET id_estudante = 4 WHERE id = 4;



