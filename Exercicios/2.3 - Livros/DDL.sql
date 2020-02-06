create database Livros;
use Livros;

create table Generos (
	IdGenero int primary key identity,
	Nome	 varchar(200) not null
);

create table Autores (
	IdAutor int primary key identity,
	NomeAutor varchar(200) not null
);

create table Livros (
	IdLivro int primary key identity,
	Titulo varchar(255),
	IdGenero int foreign key references Generos (IdGenero),
	IdAutor  int foreign key references Autores (IdAutor)
);