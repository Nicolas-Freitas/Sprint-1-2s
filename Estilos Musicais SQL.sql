CREATE DATABASE EstilosMusicais;
USE EstilosMusicais;

CREATE TABLE  EstilosMusicais(
IdEstilosMusicais INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200),
);

CREATE TABLE Artistas(
IdArtistas INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200),
IdEstilosMusicais INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilosMusicais)
);

ALTER TABLE EstilosMusicais
ADD Descricao VARCHAR(200);

--Comando de inserir dados

INSERT INTO EstilosMusicais (Nome, Descricao)
VALUES ('Rock', 'Estilo Musical'),
	   ('Indie', 'Estilo');

INSERT INTO Artistas (Nome,IdEstilosMusicais)
VALUES ('Post Malone', 1),
	   ('Michael jackson', 2;

select*from EstilosMusicais;
select*from Artistas;

update Artistas
set IdEstilosMusicais = 1
where IdArtistas = 3;

delete from EstilosMusicais
where IdEstilosMusicais = 1;

use RoteiroLivros

