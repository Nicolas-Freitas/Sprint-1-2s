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