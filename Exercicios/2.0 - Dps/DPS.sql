--------------------------------------------------DDL--------------------------------------------------
create database DPS
use DPS

create table Empresa(
IdEmpresa int primary key identity,
NomeEmpresa varchar (200) unique not null
);

create table Departamento(
IdDepartamento int primary key identity,
NomeDepartamento Varchar (200) Unique not null,
IdEmpresa int foreign key references Empresa(IdEmpresa)
);

create table Habilidades(
IdHabilidades int primary key identity,
Habilidade Varchar (200) Unique not null
);

create table Função(
IdFuncao int primary key identity,
Funcao varchar (200) unique not null
);

create table Salario(
IdSalario int primary key identity,
Valor float unique not null
);

create table Funcionario(
IdFuncionario int primary key identity,
NomeFuncionario Varchar (200) Unique not null,
IdSalario int foreign key References Salario(IdSalario)
);

create table FuncionarioFuncao(
IdFuncionario	int foreign key references Funcionario(IdFuncionario),
IdFuncao		int foreign key references Função(IdFuncao)
);

create table FuncionarioHabilidades(
IdFuncionario int foreign key references Funcionario(IdFuncionario),
IdHabilidades int foreign key references Habilidades(IdHabilidades)
);
--------------------------------------------------DML--------------------------------------------------
insert into Habilidades (Habilidade)
values	('Dançar'),
		('Programar'),
		('Esculpir')

insert into Salario (Valor)
values	('1000'),
		('1500'),
		('2000')

insert into Funcionario (NomeFuncionario, IdSalario)
values	('Henrique', 1),
		('Juliano', 2),
		('Fernando', 1),
		('Sorocaba',3),
		('Kleber',1)

insert into Empresa (NomeEmpresa)
values	('Empresa boa'),
		('Empresa Feliz')

insert into Departamento(NomeDepartamento, IdEmpresa)
values		('Departamento Norte', 1),
			('Departamento Sul', 2),
			('Departamento Leste', 1)

insert into FuncionarioHabilidades (IdFuncionario, IdHabilidades)
values  (2,2),
		(3,2),
		(4,3)
		


update Funcionario
set IdSalario = 3
where IdFuncionario = 2

--------------------------------------------------DQL--------------------------------------------------

select * from Funcionario

select * from Habilidades

select * from Departamento

select * from FuncionarioHabilidades

select Funcionario.NomeFuncionario, Departamento.NomeDepartamento from Funcionario
inner join Departamento on Departamento.IdDepartamento = Funcionario.IdFuncionario

--Select Funcionario.* , FuncionarioHabilidades.IdHabilidades , Habilidades.Habilidade from Funcionario
--inner join FuncionarioHabilidades on Funcionario.IdFuncionario = FuncionarioHabilidades.IdFuncionario 
--inner join Habilidades on FuncionarioHabilidades.IdHabilidades = Habilidades.IdHabilidades

