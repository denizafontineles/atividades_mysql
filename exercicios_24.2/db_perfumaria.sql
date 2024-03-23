CREATE DATABASE db_perfumaria;
USE db_perfumaria;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    marca CHAR,
	quantidade_item INT NOT NULL,
    quantidade_volume VARCHAR(255),
    datavalidade DATE NOT NULL,
	preco DECIMAL(6,2) NOT NULL,
    propriedades VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, marca, quantidade_item, quantidade_volume, datavalidade, preco, propriedades, descricao) 
VALUES ("Perfume Floral", "A", 20, "50 ml", "2026-12-31", 299.99, "Essência floral", "Perfume com fragrância floral suave e duradoura");
INSERT INTO tb_produtos (nome, marca, quantidade_item, quantidade_volume, datavalidade, preco, propriedades, descricao) 
VALUES ("Perfume Amadeirado", "B", 15, "100 ml", "2027-02-28", 399.99, "Notas amadeiradas", "Perfume masculino com notas de madeira e especiarias");
INSERT INTO tb_produtos (nome, marca, quantidade_item, quantidade_volume, datavalidade, preco, propriedades, descricao) 
VALUES ("Perfume Cítrico", "C", 25, "30 ml", "2028-11-30", 499.99, "Essência cítrica", "Perfume unissex com notas frescas de frutas cítricas");
INSERT INTO tb_produtos (nome, marca, quantidade_item, quantidade_volume, datavalidade, preco, propriedades, descricao) 
VALUES ("Perfume Oriental", "D", 10, "75 ml", "2030-10-15", 699.99, "Notas orientais", "Perfume com fragrância intensa e exótica");
INSERT INTO tb_produtos (nome, marca, quantidade_item, quantidade_volume, datavalidade, preco, propriedades, descricao) 
VALUES ("Colônia Infantil", "E", 30, "200 ml", "2025-03-10", 809.99, "Hipoalergênico", "Colônia suave e delicada para bebês e crianças");
INSERT INTO tb_produtos (nome, marca, quantidade_item, quantidade_volume, datavalidade, preco, propriedades, descricao) 
VALUES  ("Água Perfumada", "F", 40, "150 ml", "2027-09-15", 709.99, "Fragrância refrescante", "Água perfumada com notas florais");
INSERT INTO tb_produtos (nome, marca, quantidade_item, quantidade_volume, datavalidade, preco, propriedades, descricao) 
VALUES ("Desodorante Roll-On", "G", 50, "50 ml", "2026-01-05", 909.99, "Antitranspirante", "Desodorante roll-on com proteção 24 horas");
INSERT INTO tb_produtos (nome, marca, quantidade_item, quantidade_volume, datavalidade, preco, propriedades, descricao)
VALUES ("Perfume de Ambiente", "H", 20, "200 ml", "2025-08-20", 509.99, "Essência floral", "Perfume para deixar sua casa com fragrância agradável");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET nome = "Colônia Floral"  WHERE id = 1;
UPDATE tb_produtos SET preco = "150.50"  WHERE id = 5;
UPDATE tb_produtos SET marca = "M"  WHERE id = 8;

SELECT * FROM tb_produtos;
