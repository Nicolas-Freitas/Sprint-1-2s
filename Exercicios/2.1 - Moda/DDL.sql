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