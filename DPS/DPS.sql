Create Database DPS

Use DPS

Create Table Empresa(
IdEmpresa INT Primary Key Identity
,NomeEmpresa Varchar (200) Unique not null
);

Create Table Departamento(
IdDepartamento INT Primary Key Identity
,NomeDepartamento Varchar (200) Unique not null
,IdEmpresa int foreign key references Empresa(IdEmpresa)
);

Create Table Habilidades(
IdHabilidades INT Primary Key Identity
,Habilidade Varchar (200) Unique not null
);

Create Table Função(
IdFuncao INT Primary Key Identity
,Funcao Varchar (200) Unique not null
);

Create Table Salario(
IdSalario INT Primary Key Identity
,Valor Float Unique not null
);

Create Table Funcionario(
IdFuncionario INT Primary Key Identity
,NomeFuncionario Varchar (200) Unique not null
,IdSalario int foreign key References Salario(IdSalario)
);

Create Table FuncionarioFuncao(
IdFuncionario int foreign key references Funcionario(IdFuncionario)
,IdFuncao int foreign key references Função(IdFuncao)
);

Create Table FuncionarioHabilidades(
IdFuncionario int foreign key references Funcionario(IdFuncionario)
,IdHabilidades int foreign key references Habilidades(IdHabilidades)
);

insert INto Habilidades (Habilidade)
Values	('Desenhar')
		,('Programar')
		,('Desenvolver')
		,('Gerenciar')


insert into Funcionario (NomeFuncionario , IdSalario)
	Values	('Henrique', 1)
			,('Juliano', 2)
			,('Fernando', 1)
			,('Sorocaba',3)
			,('Roger',1)

insert into Salario (Valor)
	values	(1000)
			,(1500)
			,(2000)


update Funcionario
set IdSalario = 3
where IdFuncionario = 2

Select *
From Funcionario

Select *
From Habilidades

Select *
From Departamento

Alter table Funcionario
Add  IdDepartamento int foreign key references Departamento(IdDepartamento)

update Funcionario
set IdDepartamento = 3
Where IdFuncionario = 6

Insert into Departamento(NomeDepartamento , IdEmpresa)
	Values		('Departamento Av XXX', 1)
				,('Departamento Central', 2)
				,('Departamento Leste', 1)

Insert into Empresa (NomeEmpresa)
	Values ('Senai')
	,('Ponto Digital')

Select Funcionario.* , Departamento.NomeDepartamento,IdEmpresa
	From Funcionario
	Join Departamento
	ON Funcionario.IdDepartamento = Departamento.IdDepartamento 


	Alter Table Habilidades
	Add  Descrição Varchar(200)

Update Habilidades
Set Descrição = 'Gerencia'
Where IdHabilidades = 4

Insert into FuncionarioHabilidades (IdFuncionario , IdHabilidades)
	Values (2,4)
			,(3,4)
			,(4,3)


Select *
From FuncionarioHabilidades

Select Funcionario.* , FuncionarioHabilidades.IdHabilidades , Habilidades.Habilidade
	From Funcionario
	Join FuncionarioHabilidades
	ON Funcionario.IdFuncionario = FuncionarioHabilidades.IdFuncionario 
	join Habilidades
	on FuncionarioHabilidades.IdHabilidades = Habilidades.IdHabilidades
