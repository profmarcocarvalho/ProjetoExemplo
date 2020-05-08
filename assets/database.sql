CREATE DATABASE exemplo_produtos;

USE exemplo_produtos;

CREATE TABLE Categorias(
    Id int AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Produtos(
    Id int AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    CategoriaId int NOT NULL REFERENCES Categorias.Id
);


INSERT INTO Categorias(Id, Nome) VALUES
    (1, 'Eletrodoméstico'),
    (2, 'Progutos Alimentícios'),
    (3, 'Produtos de Limpeza');

INSERT INTO Produtos(Id, Nome, CategoriaId) VALUES
    (1, 'SmartTv LG 50 Polegadas', 1),
    (2, 'SmartPhone Samsumg Galaxy S10', 1),
    (3, 'Farinha de Trigo', 2),
    (4, 'Cereal Matinal', 2),
    (5, 'Detergente Líquido', 3),
    (6, 'Sabão em Pó', 3);