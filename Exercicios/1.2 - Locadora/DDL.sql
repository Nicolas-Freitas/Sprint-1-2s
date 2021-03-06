create database Locadora;
use Locadora

create table Marca (
	IdMarca int primary key identity,
	Nome	 varchar(200) not null,
)

create table Modelo (
	IdModelo int primary key identity,
	Nome	 varchar(200) not null,
	IdMarca  int foreign key references Marca (IdMarca),
)

create table Empresa (
	IdEmpresa  int primary key identity,
	Nome	   varchar(200) not null,
)

create table Cliente (
	IdCliente int primary key identity,
	Nome	  varchar(200) not null,
	CPF		  varchar(200) not null,
)	

create table Veiculos (
	IdVeiculo int primary key identity,
	IdModelo  int foreign key references Modelo (IdModelo),
	Placa	  varchar(200) not null,
	IdEmpresa int foreign key references Empresa (IdEmpresa),
)

create table Aluguel (
	IdAluguel int primary key identity,
	IdCliente int foreign key references Cliente (IdCliente),
	IdVeiculo int foreign key references Veiculos (IdVeiculo),
	DataInicio date,
	Datafim  date,
)