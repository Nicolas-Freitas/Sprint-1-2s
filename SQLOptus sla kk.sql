		create database Optus;
		use Optus;

		create table TipoUsuario(
		IdTipoUsuario INT PRIMARY KEY IDENTITY,
		Titulo VARCHAR(200)
		);

		create table Usuario(
		IdUsuario INT PRIMARY KEY IDENTITY,
		Nome VARCHAR(200),
		TipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
		);

		create table Artistas(
		IdArtistas INT PRIMARY KEY IDENTITY,
		Nome VARCHAR(200)
		);

		create table Estilos(
		IdEstilo INT PRIMARY KEY IDENTITY,
		Nome VARCHAR(200)
		);

		create table Albuns(
		IdAlbum INT PRIMARY KEY IDENTITY,
		Nome VARCHAR(200),
		DataLancamento date,
		Visualizacao int,
		QtdMinutos int,
		IdArtistas INT FOREIGN KEY REFERENCES Artistas (IdArtistas),
		IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
		);

		insert into Artistas(Nome) 
		values ('Green Day'),
			   ('Post Malone'),
			   ('Led Zeppelin'),
			   ('Cage The Elephant'),
			   ('Linkin Park');

		insert into TipoUsuario(Titulo) 
		values ('Administrador'),
			   ('Comum'),
			   ('Comum'),
			   ('Administrador'),
			   ('Comum');

		insert into Estilos(Nome) 
		values ('Indie/Rock'),
			   ('Pop'),
			   ('Rock'),
			   ('Rock'),
			   ('Rock');

		insert into Usuario(Nome, TipoUsuario) 
		values ('Kleber', '1'),
			   ('Carlos', '2'),
			   ('Eduardo', '2'),
			   ('Ana', '1'),
			   ('John','2');

		insert into Albuns(Nome, DataLancamento, Visualizacao, QtdMinutos, IdArtistas,IdEstilo) 
		values ('Rei Delas', '10-12-2003','12412','500',1,1),
			   ('Nego Ney destruiu a africa', '10-12-2003','12341','500',2,2),
			   ('Nego ney matou varios', '10-12-2003','53132','500',3,3),
			   ('Nego ney destruiu a Amazonia', '10-12-2003','12351','500',4,4),
			   ('Minha mãe matou o josé','10-12-2003','31523','500',5,5);

		delete from Albuns
		where IdAlbum = 5;

		update TipoUsuario
		set Titulo = 'Comum'
		where IdTipoUsuario = 4;

			   truncate table Albuns;

		select * from Artistas;
		select * from TipoUsuario;
		select * from Usuario;
		select * from Albuns;
		select * from Estilos;