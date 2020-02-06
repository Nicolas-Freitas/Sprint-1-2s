select*from EstilosMusicais;
select*from Artistas;

select Artistas.Nome, EstilosMusicais.Nome from Artistas
inner join EstilosMusicais on EstilosMusicais.IdEstilosMusicais = Artistas.IdEstilosMusicais