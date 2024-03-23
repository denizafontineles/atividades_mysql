CREATE DATABASE db_recursos_humanos;
USE db_recursos_humanos;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(255),
    data_admissao DATE NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE tb_funcionarios ADD salario DECIMAL(10, 2) NOT NULL;

INSERT INTO tb_funcionarios(nome, cpf, data_nascimento, endereco, data_admissao, cargo, salario) 
VALUES("Yuri Sanches", "15974632810", "1996-03-11", "Rua Abelardo Luiz", "2021-02-18", "Analista de Engenharia de TI Jr", 4800);
INSERT INTO tb_funcionarios(nome, cpf, data_nascimento, endereco, data_admissao, cargo, salario) 
VALUES("José Vitor", "41956301210", "1998-01-11", "Ruas das Magnólias", "2022-08-01", "Executivo de Vendas Sênior", 7100),
("Maria Machado", "21398456301", "2000-12-16", "Avenida Trevo de Santa Maria", "2019-05-03", "Analista Administrativo II", 3550),
("Miranda Flores", "36925814792", "1980-07-14", "Rua Édson Mendo Leitão", "2019-05-03", "Gerente de Projetos", 9520),
("Flávia Barroso", "74582361984", "1977-07-14", "Rua Édson Mendo Leitão", "2019-05-03", "Head de Produtos", 13990);
INSERT INTO tb_funcionarios(nome, cpf, data_nascimento, endereco, data_admissao, cargo, salario) 
VALUES("Yuri Sanches", "47536912832", "2004-06-17", "Rua Alberto de Macedo", "2024-01-08", "Auxiliar de Enfermagem", 1800);

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET endereco = "Avenida Ministro José Américo de Almeida"  WHERE id = 5;
UPDATE tb_funcionarios SET data_admissao = "2017-01-29"  WHERE id = 5;
UPDATE tb_funcionarios SET nome = "João Pedro Araújo"  WHERE id = 6;

SELECT * FROM tb_funcionarios;