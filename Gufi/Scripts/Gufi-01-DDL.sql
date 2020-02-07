-- Cria o banco de dados com o nome Gufi
CREATE DATABASE Gufi_Manha;
GO

-- Define o banco de dados que será utilizado
USE Gufi_Manha;
GO

-- Criação das tabelas
CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY
	,TituloTipoUsuario VARCHAR (255) NOT NULL UNIQUE
);
GO

CREATE TABLE TipoEvento (
	IdTipoEvento INT PRIMARY KEY IDENTITY
	,TituloTipoEvento VARCHAR (255) NOT NULL UNIQUE
);
GO

CREATE TABLE Instituicao (
	IdInstituicao INT PRIMARY KEY IDENTITY
	,CNPJ CHAR(14) NOT NULL UNIQUE
	,NomeFantasia VARCHAR (255) NOT NULL UNIQUE
	,Endereco VARCHAR (255) NOT NULL UNIQUE
);
GO

CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (255) NOT NULL
	,Email VARCHAR (255) NOT NULL UNIQUE
	,Senha VARCHAR (255) NOT NULL
	,DataCadastro DATETIME2 
	,Genero VARCHAR (255)
	,IdTipousuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);
GO

CREATE TABLE Evento (
	IdEvento INT PRIMARY KEY IDENTITY
	,NomeEvento VARCHAR (255) NOT NULL
	,DataEvento DATETIME2 NOT NULL
	,Descricao VARCHAR (255) NOT NULL
	,AcessoLivre BIT DEFAULT (1) NOT NULL
	,IdInstituicao INT FOREIGN KEY REFERENCES Instituicao (IdInstituicao)
	,IdTipoEvento INT FOREIGN KEY REFERENCES TipoEvento (IdTipoEvento)
);
GO

CREATE TABLE Presenca (
	IdPresenca INT PRIMARY KEY IDENTITY
	,IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
	,IdEvento INT FOREIGN KEY REFERENCES Evento (IdEvento)
	,Situacao VARCHAR (255) NOT NULL
);
GO

insert into TipoUsuario(TituloTipoUsuario)
values  ('Administrador'),
		('Comum')
GO

insert into TipoEvento(TituloTipoEvento)
values  ('C#'),
		('React'),
		('SQL')
GO

insert into Instituicao(CNPJ, NomeFantasia, Endereco)
values	('1111111111111', 'Escola SENAI de Informática', 'Alameda Barão de Limeira,538')
GO

insert into Usuario(Nome,Email,Senha,DataCadastro,Genero, IdTipousuario)
values  ('Administrador', 'adm@adm.com','adm123', '06/02/2020', 'Não informado', 1),
		('Carol', 'carol@email.com','carol123', '06/02/2020', 'Feminino', 2),
		('Saulo', 'saulo@email.com','saulo123', '06/02/2020', 'Masculino', 2)

insert into Evento(NomeEvento,AcessoLivre,DataEvento,Descricao, IdTipoEvento, IdInstituicao)
values	('Orientação a objetos', 1, '07/02/2020', 'Conceitos sobre os pilares da programação orientada a objetos',1 ,1),
		('Ciclo de vida', 0, '08/02/2020', 'Como utilizar os ciclos de vida com a biblioteca ReactJs',2 ,1),
		('Intrudução a SQL', 1, '09/02/2020', 'Comandos básicos utilizando SQL Server',3 ,1)
GO

insert into Presenca(IdUsuario,IdEvento,Situacao)
values	(2,2,'Confirmada'),
		(2,3,'Não Confirmada'),
		(3,1,'Confirmada')

select Nome, Email, Senha, DataCadastro, Genero, TipoUsuario.TituloTipoUsuario from Usuario
inner join TipoUsuario on TipoUsuario.IdTipoUsuario = Usuario.IdTipousuario

select * from Instituicao
select * from TipoEvento

select NomeEvento,DataEvento, Descricao, AcessoLivre, Instituicao.NomeFantasia, TipoEvento.TituloTipoEvento from Evento
inner join Instituicao on Instituicao.IdInstituicao = Evento.IdInstituicao
inner join TipoEvento on TipoEvento.IdTipoEvento = Evento.IdTipoEvento

select NomeEvento,DataEvento, Descricao, AcessoLivre, Instituicao.NomeFantasia, TipoEvento.TituloTipoEvento from Evento
inner join Instituicao on Instituicao.IdInstituicao = Evento.IdInstituicao
inner join TipoEvento on TipoEvento.IdTipoEvento = Evento.IdTipoEvento
where AcessoLivre = 1

select Nome, Email, Senha, DataCadastro, Usuario.Genero, TipoUsuario.TituloTipoUsuario from Usuario
inner join TipoUsuario on TipoUsuario.IdTipoUsuario = Usuario.IdTipousuario


select Usuario.Nome, Evento.NomeEvento, Situacao, Instituicao.NomeFantasia, DataEvento, AcessoLivre, Descricao from Presenca
inner join Usuario on Usuario.IdUsuario = Presenca.IdUsuario
inner join Evento on Evento.IdEvento = Presenca.IdEvento
inner join Instituicao on Instituicao.IdInstituicao = Evento.IdInstituicao

where (Usuario.Nome = 'Carol') and (Situacao = 'Confirmada')




--select Livros.Titulo, Generos.Nome, Autores.NomeAutor, Livros.Sinopse, Livros.DataLancamento, Livros.Publicacao from Livros 
--inner join Generos on Generos.IdGenero = Livros.IdGenero
--inner join Autores on Autores.IdAutor = Livros.IdAutor;
