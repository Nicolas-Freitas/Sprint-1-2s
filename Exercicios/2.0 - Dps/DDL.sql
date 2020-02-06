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