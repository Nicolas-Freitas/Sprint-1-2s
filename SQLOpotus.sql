		CREATE DATABASE Optus;
		USE Optus;

		CREATE TABLE TipoUsuario(
		IdTipoUsuario INT PRIMARY KEY IDENTITY,
		Titulo VARCHAR(200)
		);

		CREATE TABLE Usuario(
		IdUsuario INT PRIMARY KEY IDENTITY,
		Nome VARCHAR(200),
		TipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
		);

		CREATE TABLE Artistas(
		IdArtistas INT PRIMARY KEY IDENTITY,
		Nome VARCHAR(200)
		);

		CREATE TABLE Estilos(
		IdEstilo INT PRIMARY KEY IDENTITY,
		Nome VARCHAR(200)
		);

		CREATE TABLE Albuns(
		IdAlbum INT PRIMARY KEY IDENTITY,
		Nome VARCHAR(200),
		DataLancamento datetime,
		Visualizacao int,
		QtdMinutos int,
		IdArtistas INT FOREIGN KEY REFERENCES Artistas (IdArtistas),
		IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
		);