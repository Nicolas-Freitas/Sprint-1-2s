--------------------------------------------------DDL--------------------------------------------------

CREATE DATABASE EstilosMusicais;
USE EstilosMusicais;

CREATE TABLE  EstilosMusicais(
IdEstilosMusicais INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200),
Descricao VARCHAR(200),
);

CREATE TABLE Artistas(
IdArtistas INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200),
IdEstilosMusicais INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilosMusicais)
);

--------------------------------------------------DML--------------------------------------------------

INSERT INTO EstilosMusicais (Nome, Descricao)
VALUES ('Rock', 'Estilo Musical'),
	   ('Indie', 'Estilo');

INSERT INTO Artistas (Nome,IdEstilosMusicais)
VALUES ('Post Malone', 1),
	   ('Michael jackson', 2);

--------------------------------------------------DQL--------------------------------------------------

select*from EstilosMusicais;
select*from Artistas;

select Artistas.Nome, EstilosMusicais.Nome from Artistas
inner join EstilosMusicais on EstilosMusicais.IdEstilosMusicais = Artistas.IdEstilosMusicais




