CREATE DATABASE curso_intermediario_cfm;
USE curso_intermediario_cfm;

CREATE TABLE produtos(
    id INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto VARCHAR(300) NOT NULL,
    tempo_entrega INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    imagem_pequena VARCHAR(100) NOT NULL,
    imagem_grande VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('Smartphone', '...', 5, 3500, '../1 - materiais/imagens/img-pequenas/smartphone-pequeno.jpg', '../1 - materiais/imagens/img-grandes/smartphone-grande.jpg');

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('Tablet', '...', 15, 4255, '../1 - materiais/imagens/img-pequenas/tablet-pequeno.png', '../1 - materiais/imagens/img-grandes/tablet-grande.png');

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('Notebook', '...', 30, 4999, '../1 - materiais/imagens/img-pequenas/notebook-pequeno.png', '../1 - materiais/imagens/img-grandes/notebook-grande.png');

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('PC', '...', 5, 5783, '../1 - materiais/imagens/img-pequenas/pc-pequeno.jpg', '../1 - materiais/imagens/img-grandes/pc-grande.jpg');

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('Monitor', '...', 15, 1412, '../1 - materiais/imagens/img-pequenas/monitor-pequeno.png', '../1 - materiais/imagens/img-grandes/monitor-grande.png');

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('Mouse', '...', 30, 275, '../1 - materiais/imagens/img-pequenas/mouse-pequeno.png', '../1 - materiais/imagens/img-grandes/mouse-grande.png');

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('Teclado', '...', 5, 422, '../1 - materiais/imagens/img-pequenas/teclado-pequeno.png', '../1 - materiais/imagens/img-grandes/teclado-grande.png');

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('Headphone', '...', 15, 358, '../1 - materiais/imagens/img-pequenas/headphone-pequeno.png', '../1 - materiais/imagens/img-grandes/headphone-grande.png');

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('Mousepad', '...', 30, 49, '../1 - materiais/imagens/img-pequenas/mousepad-pequeno.png', '../1 - materiais/imagens/img-grandes/mousepad-grande.png');

INSERT INTO produtos (nome_produto, descricao_produto, tempo_entrega, preco_unitario, imagem_pequena, imagem_grande)
VALUES ('Mesa', '...', 5, 1500, '../1 - materiais/imagens/img-pequenas/mesa-pequena.png', '../1 - materiais/imagens/img-grandes/mesa-grande.png');


SELECT * FROM `produtos`;