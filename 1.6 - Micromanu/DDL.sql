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