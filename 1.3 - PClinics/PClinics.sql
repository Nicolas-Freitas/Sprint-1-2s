--------------------------------------------------DDL--------------------------------------------------

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

--------------------------------------------------DML--------------------------------------------------

insert into Clinica (RazaoSocial, Endereco)
values ('Clinica veterinaria','Alameda Barão de Limeira, 532')

insert into Dono (Nome)
values  ('Carol'),
		('Saulo')

insert into TipoPet (Titulo)
values  ('Cachorro'),
		('Gato')

insert into Raca (IdTipoPet,Titulo)
values  (2,'Siamês'),
		(2,'Persa')

insert into Veterinario (IdClinica, Nome, CRMV)
values  (1,'Pablo','123')		

insert into Pet (IdDono	,IdRaca, Nome, Telefone)
values  (1,2,'Lua','9999999'),
		(2,2,'Jefferson', '999999')

insert into Atendimento (IdVeterinario, IdPet, DataAtend, Descricao)
values  (1,2,'2020-01-27','Tudo em ordem'),
		(1,2,'2020-01-28','Doença grave detectada'),
		(1,1,'2020-01-29','Tudo em ordem')

--------------------------------------------------DQL--------------------------------------------------
select Veterinario.Nome, Pet.Nome as NomePet, Atendimento.DataAtend, Atendimento.Descricao from Atendimento 
inner join Veterinario on Veterinario.IdVeterinario = Atendimento.IdVeterinario
inner join Pet on Pet.IdPet = Atendimento.IdPet;