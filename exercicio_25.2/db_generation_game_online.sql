DROP DATABASE db_generation_game_online;
CREATE DATABASE IF NOT EXISTS db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE IF NOT EXISTS tb_classes(
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao TINYTEXT NULL,
  habilidade VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO tb_classes(nome, descricao, habilidade) 
VALUES 
('Guerreiro', 'Um mestre das armas corpo a corpo.', 'Ataque Físico'),
('Mago', 'Um manipulador poderoso de magia arcana.', 'Bola de Fogo'),
('Arqueiro', 'Um especialista em combate à distância.', 'Tiro Preciso'),
('Ladino', 'Um mestre das artes furtivas e do combate sorrateiro.', 'Ataque Furtivo'),
('Clerigo', 'Um seguidor devoto de sua divindade, capaz de curar e banir o mal.', 'Cura Divina');

SELECT * FROM tb_classes;

CREATE TABLE IF NOT EXISTS tb_personagens(
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NULL,
  nivel INT NULL,
  ataque INT NULL,
  defesa INT NULL,
  moedas DECIMAL(9,2) NULL,
  tb_classes_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_tb_personagens_tb_classes
    FOREIGN KEY (tb_classes_id)
    REFERENCES tb_classes (id)
);

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, moedas, tb_classes_id) 
VALUES
('Sora', 5, 5000, 1000, 10000.00, 1),
('Lara', 3, 1500, 2500, 8000.00, 5),
('Mario', 8, 7000, 900, 80000.00, 4),
('Chun-Li', 2, 1000, 2000, 6000.00, 5),
('Kratos', 6, 9000, 4000, 1500000.00, 3),
('Link', 4, 4500, 3500, 12000.00, 2),
('Ellie', 7, 7500, 4500, 180000.00, 1),
('Joel', 1, 800, 1500, 400.00, 3);

SELECT * FROM tb_personagens;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE ataque > 2000;
-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 4000;
-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT tb_personagens.*, tb_classes.*
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.tb_classes_id = tb_classes.id;
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica.
SELECT tb_personagens.*, tb_classes.*
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.tb_classes_id = tb_classes.id
WHERE tb_classes.id = 3;
