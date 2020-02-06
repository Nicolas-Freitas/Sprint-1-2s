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
