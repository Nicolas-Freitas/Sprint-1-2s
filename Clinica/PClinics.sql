create database PClinics
use PClinics

create table Clinica (
	IdClinica int primary key identity,
	RazaoSocial	 varchar(200) not null,
	Endereco	 varchar(200) not null
)

create table Dono (
	IdDono int primary key identity,
	Nome varchar(200) not null
)

create table TipoPet (
	IdTipoPet int primary key identity,
	Titulo varchar(200) not null
)

create table Raca (
	IdRaca int primary key identity,
	IdTipoPet  int foreign key references TipoPet (IdTipoPet),
	Titulo varchar(200) not null
)

create table Veterinario (
	IdVeterinario int primary key identity,
	IdClinica int foreign key references Clinica (IdClinica),
	Nome varchar(200) not null,
	CRMV varchar(200) not null
)

create table Pet (
	IdPet int primary key identity,
	IdDono int foreign key references Dono (IdDono),
	IdRaca int foreign key references Raca (IdRaca),
	Nome varchar(200) not null,
	Telefone int not null,
)

create table Atendimento (
	IdAtendimento int primary key identity,
	IdVeterinario int foreign key references Veterinario (IdVeterinario),
	IdPet int foreign key references Pet (IdPet),
	DataAtend date,
	Descricao varchar(200) not null,
)