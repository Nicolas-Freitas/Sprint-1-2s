--------------------------------------------------DDL--------------------------------------------------
create database Moda
use Moda

create table Tamanhos(
IdTamanho int primary key identity,
Tamanho		varchar (200) unique not null
);

create table Marcas(
IdMarca int primary key identity,
Nome	varchar (200) unique not null
);

create table Cores(
IdCor	int primary key identity,
Cor		varchar (200) unique not null
);


create table Camisetas(
IdCamiseta	int primary key identity,
IdMarca		int foreign key references Marcas (IdMarca),
IdTamanho		int foreign key references Marcas (IdMarca),
Descricao	varchar (200) not null,
TipoTecido	varchar (200) not null,
Ferro		int
);

create table CamisetaCorTamanho(
IdCamiseta	int foreign key references Camisetas(IdCamiseta),
IdCor		int foreign key references Cores(IdCor),
IdTamanho	int foreign key references Tamanhos(IdTamanho)
);
--------------------------------------------------DML--------------------------------------------------

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
--------------------------------------------------DQL--------------------------------------------------

select * from CamisetaCorTamanho

select * from Camisetas

select * from Tamanhos

select * from Cores

select Camisetas.TipoTecido,Camisetas.Ferro,Camisetas.Descricao, Marcas.Nome as Marca from Camisetas
inner join Marcas on Marcas.IdMarca = Camisetas.IdMarca
