--------------------------------------------------DDL--------------------------------------------------

create database Ecommerce
use Ecommerce

create table Lojas(
	IdLoja int primary key identity,
	Nome	 varchar(200) not null
);

create table Categorias(
	IdCategoria int primary key identity,
	IdLoja		int foreign key references Lojas (IdLoja),
	Nome		varchar(200) not null
);

create table SubCategorias(
	IdSubCategoria  int primary key identity,
	IdCategoria		int foreign key references Categorias (IdCategoria),
	Nome			varchar(200) not null
)

create table Produtos(
	IdProduto		int primary key identity,
	IdSubCategoria  int foreign key references SubCategorias (IdSubCategoria),
	Nome			varchar(200) not null,
	Valor			int not null
)

create table Clientes(
	IdCliente 		int primary key identity,
	Nome			varchar(200) not null,
)

create table Pedidos(
	IdPedido	int primary key identity,
	IdCliente   int foreign key references Clientes (IdCliente),
	NrPedido	int not null,
	DataPedido	date not null,
	Status_		varchar(200) not null
)

create table PedidosProdutos(
	IdPedido  int foreign key references Pedidos (IdPedido),
	IdProduto int foreign key references Produtos (IdProduto)
)

--------------------------------------------------DML--------------------------------------------------

insert into Lojas(Nome)
values ('SenaiShop')

insert into Categorias(Nome, IdLoja)
values  ('Cursos',1),
		('Acessórios',1)

insert into SubCategorias (Nome, IdCategoria)
values  ('Informática Básica', 1),
		('Desenvolvimento', 1),
		('Meio Ambiente', 2),
		('Camisetas', 2)

insert into Produtos (Nome, Valor, IdSubCategoria)
values	('Copo para Café', '25',3),
		('Jaqueta', '100',4),
		('Excel Básico', '350',1),
		('C#', '700',2)

insert into Clientes (Nome)
values  ('Fernando'),
		('Helena')

insert into Pedidos (NrPedido,IdCliente,DataPedido,Status_)
values  ('5455514',1,'2020-01-22', 'Em Andamento'),
		('23232',2,'2020-01-22','Entregue')

insert into PedidosProdutos
values  (1,2),
		(1,2),
		(2,3),
		(2,4);

--------------------------------------------------DQL--------------------------------------------------
select * from Pedidos 

select Pedidos.IdPedido, Clientes.Nome, NrPedido, Pedidos.DataPedido, Pedidos.Status_ from Pedidos 
inner join Clientes on Clientes.IdCliente = Pedidos.IdCliente;


select * from Produtos

SELECT AVG(Valor)
FROM Produtos

SELECT SUM(Valor)
FROM Produtos

SELECT COUNT(Valor)
FROM Produtos