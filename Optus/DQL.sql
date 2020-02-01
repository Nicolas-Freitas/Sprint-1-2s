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
