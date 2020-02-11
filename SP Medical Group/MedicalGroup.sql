create database spmedgroup
go
use spmedgroup
go
create table Clinica (
	IdClinica	int primary key identity,
	RazaoSocial	varchar (200) not null,
	Endereco	varchar (200) not null
);
go

create table TipoUsuario (
	IdTipoUsuario	int primary key identity,
	TituloTipoUsuario varchar (200) not null
);
go

create table Usuario (
	IdUsuario int primary key identity,
	Nome varchar (100) not null,
	Email varchar (100) not null,
	Senha varchar (100) not null,
	IdTipoUsuario int foreign key references TipoUsuario (IdTipoUsuario)
);
go
create table Especialidade (
	IdEspecialidade		int primary key identity,
	TituloEspecialidade	varchar (100) not null
);
go

create table Medico (
	IdMedico	int primary key identity,
	CRM			varchar (100),
	IdUsuario int foreign key references Usuario (IdUsuario),
	IdClinica int foreign key references Clinica (IdClinica) ,
	IdEspecialidade int foreign key references Especialidade (IdEspecialidade)
);
go

create table Paciente (
	IdPaciente	int primary key identity,
	CPF		 varchar (50),
	RG		 varchar (50),	
	Endereco varchar (100),
	DataNascimento date,
	Telefone varchar(50),
	IdUsuario int foreign key references Usuario (IdUsuario)
);
go

create table Situacao (
	IdSituacao int primary key identity,
	Realizado varchar(10) not null,
);
go

create table Consulta (
	IdConsulta int primary key identity,
	DataConsulta datetime2,
	Descricao varchar(300),
	IdPaciente int foreign key references Paciente (IdPaciente),
	IdMedico int foreign key references Medico (IdMedico),
	IdSituacao int foreign key references Situacao (IdSituacao)
);
go

insert into Clinica (RazaoSocial,Endereco)
values	('SP Medical Group','Avenida Rua')
go
insert into TipoUsuario (TituloTipoUsuario)
values  ('Paciente'),
		('Médico'),
		('ADM')
go

insert into Especialidade (TituloEspecialidade)
values  ('Pediatria'),
		('Odontologia'),
		('Gastrenterologia'),
		('Psiquiatria')
go

insert into Usuario (Nome, Email, Senha, IdTipoUsuario)
values  ('Administrador', 'ademir@email.com', '123456789', 3),
		('Rogerio', 'rogerio@email.com', '123456789', 1),
		('Paulo', 'paulo@email.com', '12345678', 1),
		('Eduardo', 'eduardo@email.com', '123456789', 2),
		('Carlos', 'carlos@email.com', '123456789', 2),
		('Ana', 'anaotaria@email.com', '123456789', 2),
		('Nicolas', 'nicolas@email.com', '123456789', 2)

insert into Paciente (CPF,RG,Endereco,DataNascimento,Telefone,IdUsuario)
values  ('955.323.638-38', '44.205.030-6', 'Rua Benedicto Leite', '2002-05-19', '11982973275',1),
		('066.153.588-67', '12.018.568-4', 'Rua Doutor José Foz', '2002-06-19', '18988284302',2)
go
insert into Medico (CRM,IdClinica,IdEspecialidade,IdUsuario)
values	('3234213',1,2,3),
		('5133123',1,1,4),
		('5648274',1,4,5),
		('4824950',1,2,6)
go

insert into Situacao (Realizado)
values	('Concluido'),
		('Aguardando')
go

insert into Consulta (DataConsulta,Descricao,IdPaciente,IdMedico,IdSituacao)
values  ('30/01/2019','Queixa de dores',2,3,1),
		('30/01/2018','Dores',1,4,2)
go

select Nome,Email,Senha,TipoUsuario.TituloTipoUsuario from Usuario
inner join TipoUsuario on Usuario.IdTipoUsuario = TipoUsuario.IdTipoUsuario

select DataConsulta, Descricao, Paciente.CPF as PacienteCPF, Medico.CRM as MedicoCRM, Situacao.Realizado as Situacao from Consulta
inner join Situacao on Consulta.IdSituacao = Situacao.IdSituacao
inner join Paciente on Consulta.IdPaciente = Paciente.IdPaciente
inner join Medico on Consulta.IdMedico = Medico.IdMedico

select CRM, Usuario.Nome,  Especialidade.TituloEspecialidade, Clinica.RazaoSocial from Medico
inner join Usuario on Medico.IdUsuario = Usuario.IdUsuario
inner join Clinica on Medico.IdClinica = Clinica.IdClinica
inner join Especialidade on Medico.IdEspecialidade = Especialidade.IdEspecialidade

select CPF, RG, Endereco, DataNascimento, Telefone, Usuario.Nome from Paciente
inner join Usuario on Paciente.IdUsuario = Usuario.IdUsuario


