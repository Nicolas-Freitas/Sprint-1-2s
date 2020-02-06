insert into Generos (Nome) 
values ('Fic��o cient�fica'),
	   ('Romance'),
	   ('A��o'),
	   ('Biografia'),
	   ('Mist�rio');

insert into Autores (NomeAutor)
values ('Douglas Adams'),
	   ('Aldous Huxley'),
	   ('Ray Bradbury'),
	   ('George Orwell'),
	   ('Arthur Conan Doyle');

insert into Livros (Titulo, IdGenero, IdAutor)
values ('1984',2,4),
	   ('Revolu��o dos Bichos',1,4),
	   ('Admir�vel Mundo Novo',1,2),
	   ('O Guia do Mochileiro Das Gal�xias',3,1),
	   ('Fahrenheit 451',1,3);

update Livros
set Titulo = 'O Pequeno Pr�ncipe'
where IdLivro = 4;

update Livros
set IdGenero = 3
where IdLivro = 3;

update Autores
set NomeAutor = 'Antoine De Saint-Exup�ry'
where IdAutor = 1;

update Generos
set Nome = 'Aventura'
where IdGenero = 4;

delete from Livros
where IdLivro = 3;

delete from Autores
where IdAutor = 2;