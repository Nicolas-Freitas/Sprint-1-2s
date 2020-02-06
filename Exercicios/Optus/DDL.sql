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