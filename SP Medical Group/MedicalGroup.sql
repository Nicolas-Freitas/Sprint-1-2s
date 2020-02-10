create database spmedgroup
use spmedgroup

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

create table TipoMed (
	IdTipoMed	int primary key identity,
	Nome varchar (100) not null
);
go

create table Medicos (
	IdMedico	int primary key identity,
	Nome		varchar (100),
	CRM			varchar (100),
	IdClinica int foreign key references Clinica (IdClinica) ,
	IdTipoUsuario int foreign key references TipoUsuario (IdTipoUsuario),
	IdTipoMed int foreign key references TipoMed (IdTipoMed)
);
go

create table Paciente (
	IdPaciente	int primary key identity,
	Nome	 varchar (100),
	CPF		 varchar (100),
	RG		 varchar (11),	
	Endereco varchar (14),
	DataNascimento date,
	Telefone int,
	IdTipoUsuario int foreign key references TipoUsuario (IdTipoUsuario)
)
go

create table Atendimento (
	IdAtendimento int primary key identity,
	DataAtend datetime2,
	Descricao varchar(300),
	IdPaciente int foreign key references Paciente (IdPaciente),
	IdMedico int foreign key references Medicos (IdMedico)
);

insert into Clinica (RazaoSocial,Endereco)
values ('SP Medical Group','Avenida Rua')

insert into TipoUsuario (TituloTipoUsuario)
values  ('Médico'),
		('Pacinte'),
		('Administrador')

insert into TipoMed (Nome)
values  ('Pediatria'),
		('Odontologia'),
		('Gastrenterologia'),
		('Psiquiatria')

insert into Medicos (Nome,CRM,IdClinica,IdTipoMed,IdTipoUsuario)
values	('Eduardo','3234213',1,2,1),
		('Carlos','5133123',1,3,2),
		('Ana','5648274',1,4,2),
		('Nicolas','4824950',1,2,1)

insert into Paciente (Nome,CPF,RG,Endereco,DataNascimento,Telefone)
values  ('Rogerio', '955.323.638-38', '44.205.030-6', 'Rua Benedicto Leite', '16\/05\/2002', '11 98297-3275'
		('Valter', '066.153.588-67', '12.018.568-4', 'Rua Doutor José Foz', '01\/06\/2002', (18) 98828-4302
		('Walter'
		('Ciro'
		('Paulo'
		

		