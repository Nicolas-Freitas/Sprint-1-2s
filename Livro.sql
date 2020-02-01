create database Livro;
use Livro;

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

INSERT INTO Generos (Nome) 
VALUES ('Ficção'),
	   ('Poesia'),
	   ('Ação'),
	   ('Romance'),
	   ('Classico');

INSERT INTO Autores (NomeAutor)
VALUES ('Gabriel'),
	   ('Nathan'),
	   ('George'),
	   ('John'),
	   ('Aaa');

INSERT INTO Livros (Titulo, IdGenero, IdAutor)
VALUES ('Livro',2,5),
	   ('Livro Bom',3,3),
	   ('Livro Legal',1,4),
	   ('Nice livro',4,1),
	   ('aaa livro',5,2);

UPDATE Livros
SET Titulo = 'Livro sangue bom'
WHERE IdLivro = 4;

UPDATE Livros
SET IdGenero = 3
WHERE IdLivro = 3;

UPDATE Generos
SET Nome = 'Aventura'
WHERE IdGenero = 4;

DELETE FROM Livros
WHERE IdLivro = 3;

DELETE FROM Autores
WHERE IdAutor = 1;
	

select * from Autores;
select * from Generos;
select * from Livros;

--select IdAutor,Titulo from Livros

--select IdGenero,Titulo from Livros

--select IdAutor,Titulo from Livros

select Livros.Titulo, Autores.NomeAutor from Livros
inner join Autores on Autores.IdAutor = Livros.IdAutor

select Livros.Titulo, Generos.Nome from Livros 
inner join Generos on Generos.IdGenero = Livros.IdAutor;

select Livros.Titulo, Generos.Nome, Autores.NomeAutor from Livros 
inner join Generos on Generos.IdGenero = Livros.IdAutor
inner join Autores on Autores.IdAutor = Livros.IdAutor;