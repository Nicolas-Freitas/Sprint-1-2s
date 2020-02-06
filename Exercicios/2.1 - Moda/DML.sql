insert into Tamanhos (Tamanho)
values	('PP'),
		('P'),
		('M'),
		('G'),
		('GG')

insert into Cores (Cor)
values	('Branca'),
		('Verde'),
		('Azul'),
		('Amarela'),
		('Preta')

insert into Marcas (Nome)
values	('Lacoste'),
		('Nike'),
		('Adidas'),
		('Okley'),
		('Kelvin Klein')

insert into Camisetas (IdMarca, Descricao, TipoTecido, Ferro)
values	(1, 'Roupa Boa','Algodão','1'),
		(4, 'Roupa Muito Boa','Algodão','0'),
		(5, 'Roupa Merda','Malha','1'),
		(2, 'Roupa Excelente','Malha','1'),
		(3, 'Roupa Feia','Algodão','0')

insert into CamisetaCorTamanho (IdCamiseta, IdCor , IdTamanho)
values	(1,3,3),
		(2,4,3),
		(3,2,2),
		(4,4,4),
		(5,3,3)