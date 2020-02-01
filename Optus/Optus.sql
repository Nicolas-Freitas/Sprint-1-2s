--------------------------------------------------DDL--------------------------------------------------
create database OptusCorrect;
use OptusCorrect;

create table TipoUsuario(
IdTipoUsuario int primary key identity,
Titulo varchar(200)
);

create table Usuario(
IdUsuario int primary key identity,
Nome varchar(200),
TipoUsuario int foreign key references TipoUsuario (IdTipoUsuario)
);

create table Artistas(
IdArtistas int primary key identity,
Nome varchar(200)
);

create table Estilos(
IdEstilo int primary key identity,
Nome varchar(200)
);

create table Albuns(
IdAlbum int primary key identity,
Nome varchar(200),
DataLancamento date,
Visualizacao int,
QtdMinutos int,
IdArtistas int foreign key references Artistas (IdArtistas),
IdEstilo int foreign key references Estilos (IdEstilo)
);
--------------------------------------------------DML--------------------------------------------------

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
values ('Kleber', 1),
	   ('Carlos', 2),
	   ('Eduardo', 2),
	   ('Ana', 1),
	   ('John',2);

insert into Albuns(Nome, DataLancamento, Visualizacao, QtdMinutos, IdArtistas,IdEstilo) 
values  ('Rei Delas', '10-12-2003','12412','500',1,1),
		('Nego Ney destruiu a africa', '10-12-2003','12341','500',2,2),
		('Nego ney matou varios', '10-12-2003','53132','500',3,3),
		('Nego ney destruiu a Amazonia', '10-12-2003','12351','500',4,4),
		('Minha mãe matou o josé','10-12-2003','31523','500',5,5);

delete from Albuns
where IdAlbum = 5;

update TipoUsuario
set Titulo = 'Comum'
where IdTipoUsuario = 4;

update Albuns
set Visualizacao = 50002892
where IdAlbum = 3;

delete from Albuns 
where IdAlbum in (3,2);

update TipoUsuario
set Titulo = 'Administrador'
where IdTipoUsuario in (3,4);

--------------------------------------------------DQL--------------------------------------------------

select * from Artistas;
select * from TipoUsuario;
select * from Usuario;
select * from Albuns;
select * from Estilos;

select Titulo from TipoUsuario;

select IdArtistas,Nome from Albuns
where IdArtistas = 1;

select IdArtistas,Nome from Albuns
where DataLancamento = '10-12-2003';

select IdArtistas,Nome from Albuns
where IdEstilo = 1;

select * from Albuns order by DataLancamento asc;
		
select Nome, IdArtistas from Albuns order by DataLancamento asc;
