CREATE DATABASE RoteiroLivros;
USE RoteiroLivros;

-- IDENTITY (Auto Incremento)
-- NOT NULL (Obrigado a escrever um valor dentre dele)

CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY NOT NULL, 
	Nome     VARCHAR(200) NOT NULL
);

CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY,
	NomeAutor VARCHAR (200)
);

CREATE TABLE Livros (
	IdLivro  INT PRIMARY KEY IDENTITY,
	Titulo	 VARCHAR(255),
	IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero),
	IdAutor  INT FOREIGN KEY REFERENCES Autores (IdAutor) 
);

-- Comandos de DQL abaixo (comando de consulta)

SELECT * FROM Autores;
SELECT * FROM Generos;
SELECT * FROM Livros;