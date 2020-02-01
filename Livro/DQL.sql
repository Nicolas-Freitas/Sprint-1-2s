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