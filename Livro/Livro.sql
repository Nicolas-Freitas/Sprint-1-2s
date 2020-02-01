--------------------------------------------------DDL--------------------------------------------------

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

--------------------------------------------------DDL--------------------------------------------------

insert into Generos (Nome) 
values ('Ficção científica'),
	   ('Romance'),
	   ('Ação'),
	   ('Biografia'),
	   ('Mistério');

insert into Autores (NomeAutor)
values ('Douglas Adams'),
	   ('Aldous Huxley'),
	   ('Ray Bradbury'),
	   ('George Orwell'),
	   ('Arthur Conan Doyle');

insert into Livros (Titulo, IdGenero, IdAutor)
values ('1984',2,1),
	   ('Revolução dos Bichos',1,1),
	   ('Admirável Mundo Novo',1,2),
	   ('O Guia do Mochileiro Das Galáxias',3,1),
	   ('Fahrenheit 451',1,3);

update Livros
set Titulo = 'O Pequeno Príncipe'
where IdLivro = 4;

update Livros
set IdGenero = 3
where IdLivro = 3;

update Autores
set NomeAutor = 'Antoine De Saint-Exupéry'
where IdAutor = 1;

update Generos
set Nome = 'Aventura'
where IdGenero = 4;

delete from Livros
WHERE IdLivro = 3;

delete from Autores
where IdAutor = 1;
------------------------------------------------extras-------------------------------------------------


alter table Livros add Sinopse varchar(300) default null, DataLancamento date default null, Publicacao varchar(5) default null;

--insert into Lirvros IdLivro (Sinopse, DataLancamento, Publicacao)
--values  ('foafowawaof','10-10-2010','Sim'),
--		('foafowawaof','10-10-2010','Sim'),
--		('foafowawaof','10-10-2010','Sim'),
--		('foafowawaof','10-10-2010','Sim');


select Livros.Titulo, Generos.Nome, Autores.NomeAutor, Livros.Sinopse, Livros.DataLancamento, Livros.Publicacao from Livros 
inner join Generos on Generos.IdGenero = Livros.IdGenero
inner join Autores on Autores.IdAutor = Livros.IdAutor;

--------------------------------------------------DQL--------------------------------------------------
	
select * from Autores;
select * from Generos;
select * from Livros;

/*select IdAutor,Titulo from Livros*/

/*select IdGenero,Titulo from Livros*/

/*select IdAutor,Titulo from Livros*/

select Livros.Titulo, Autores.NomeAutor from Livros
inner join Autores on Autores.IdAutor = Livros.IdAutor

select Livros.Titulo, Generos.Nome from Livros 
inner join Generos on Generos.IdGenero = Livros.IdGenero;

select Livros.Titulo, Generos.Nome, Autores.NomeAutor from Livros 
inner join Generos on Generos.IdGenero = Livros.IdGenero
inner join Autores on Autores.IdAutor = Livros.IdAutor;