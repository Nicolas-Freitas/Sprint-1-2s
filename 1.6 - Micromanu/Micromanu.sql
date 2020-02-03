----------------------------------------DDL---------------------------------------------
create database Micromanu
use Micromanu

create table Colaboradores (
	IdColaborador   int primary key identity,
	Nome			varchar(200),
	Salario			int
);

create table Itens(
	IdItem int primary key identity,
	Descricao varchar(200)
);

create table PedidosColaboradores(
	IdPedido		int primary key identity,
	IdColaborador	int foreign key references Colaboradores (IdColaborador)
);

create table Clientes(
	IdCliente	int primary key identity,
	Nome		varchar(200)
);

create table TipoConserto(
	IdTipo		int primary key identity,
	Descricao	varchar(200)
);

create table Pedidos (
	IdPedido	int primary key identity,
	IdCliente	int foreign key references clientes (idCliente),
	IdItem		int foreign key references itens (idItem),
	IdTipo		int foreign key references tipoConserto(idTipo),
	NumeroEquipamento	int,
	Entrada				date,
	Saida				date
);
----------------------------------------DML---------------------------------------------

insert into Colaboradores(Nome,Salario)
values  ('Henrique',1000),
		('Juliano',1000),
		('Fernando',1500),
		('Sorocaba',2000);

insert into Itens(descricao)
values	('Computador'),
		('Notebook'),
		('Video game'),
		('Televisão'),
		('Celular');	

insert into Clientes(nome)
values	('Saulo'),
		('Carol');

insert into TipoConserto(descricao)
values	('Manutenção'),
		('Limpeza');

insert into Pedidos(IdCliente,IdItem,IdTipo,NumeroEquipamento,Entrada,Saida)
values	(1,1,1,123,'2002-05-22','2020-05-23'),
		(2,3,1,321,'2002-05-22',''),
		(2,4,2,132,'2002-05-22','');
----------------------------------------DQL---------------------------------------------

select NumeroEquipamento,Entrada,Saida,Itens.Descricao as DescricaoItem,TipoConserto.Descricao as DescricaoConserto,Clientes.Nome as Cliente from Pedidos
inner join Itens on Pedidos.IdItem = Itens.IdItem
inner join TipoConserto on Pedidos.IdTipo = TipoConserto.IdTipo
inner join Clientes on Pedidos.IdCliente = Clientes.IdCliente