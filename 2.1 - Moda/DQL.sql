select * from CamisetaCorTamanho

select * from Camisetas

select * from Tamanhos

select * from Cores

select Camisetas.TipoTecido,Camisetas.Ferro,Camisetas.Descricao, Marcas.Nome as Marca from Camisetas
inner join Marcas on Marcas.IdMarca = Camisetas.IdMarca
