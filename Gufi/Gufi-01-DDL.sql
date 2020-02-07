create database GufiManha;

-- Cria o banco de dados com o nome Gufi
CREATE DATABASE Gufi_Manha;
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

create table AcessoLivre (
IdAcessoLivre int primary key identity,
Acesso varchar(200)
);

CREATE TABLE Evento (
	IdEvento INT PRIMARY KEY IDENTITY
	,NomeEvento VARCHAR (255) NOT NULL
	,DataEvento DATETIME2 NOT NULL
	,Descricao VARCHAR (255) NOT NULL
	,IdAcessoLivre int foreign key references AcessoLivre(IdAcessoLivre) 
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
values ('Administrador'),
	   ('Usuario')
GO

insert into TipoEvento (TituloTipoEvento)
values ('C#'),
	   ('React'),
	   ('SQL')
GO
insert into Instituicao(CNPJ, NomeFantasia, Endereco)
values('1234564', 'Escola SENAI de Informática', 'Alameda Barão de Limeira,358')
GO
insert into Usuario (Nome, Email, Senha, DataCadastro, Genero, IdTipousuario)
values ('Administrador', 'adm@gmail.com', 'adm123', '06-02-2020', 'Não Informado', 1),
	   ('Carol', 'carol@gmail.com', 'carol', '06-02-2020', 'Feminino', 2),
	   ('Saulo', 'saulo@gmail.com', 'saulo123', '06-02-2020', 'Masculino', 1)
GO
insert into AcessoLivre (Acesso)
values ('Publico'),
	   ('Privado')
GO
insert into Evento (NomeEvento, DataEvento, Descricao, IdAcessoLivre, IdInstituicao, IdTipoEvento)
values ('Orientação a objetos', '07-02-2020', 'Conceitos  sobre pilares da programação', 1, 1, 1),
	   ('Ciclo de Vida', '07-02-2020', 'Como usa os ciclos de vida  com a biblioteca no React', 2, 1, 2),
	   ('Intodução ao Sql', '07-02-2020', 'Comandos básicos', 1, 1, 3)

GO

insert into Presenca (IdUsuario, IdEvento, Situacao)
values (2, 2, 'Confirmado'),
	   (2, 3, 'Não Confirmado'),
	   (3, 1, 'Confirmado')
GO
select*from TipoUsuario;


select*from Usuario;
select*from Evento;
select*from Presenca;

select Nome, Email, DataCadastro, Genero , TipoUsuario.TituloTipoUsuario from Usuario
inner join TipoUsuario on Usuario.IdTipousuario = TipoUsuario.IdTipoUsuario;

select*from Instituicao;

select*from TipoEvento;

select NomeEvento, DataEvento, Descricao, AcessoLivre.Acesso, Instituicao.NomeFantasia, Instituicao.CNPJ, TipoEvento.TituloTipoEvento from Evento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
inner join TipoEvento on Evento.IdTipoEvento = TipoEvento.IdTipoEvento
inner join AcessoLivre on Evento.IdAcessoLivre = AcessoLivre.IdAcessoLivre

select NomeEvento, DataEvento, Descricao, AcessoLivre.Acesso, Instituicao.NomeFantasia, Instituicao.CNPJ, TipoEvento.TituloTipoEvento from Evento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
inner join TipoEvento on Evento.IdTipoEvento = TipoEvento.IdTipoEvento
inner join AcessoLivre on Evento.IdAcessoLivre = AcessoLivre.IdAcessoLivre
where Evento.IdAcessoLivre = 1;

select Usuario.Nome, Evento.NomeEvento, Instituicao.NomeFantasia,Situacao, Evento.DataEvento, AcessoLivre.Acesso from Presenca
inner join Usuario on Presenca.IdUsuario = Usuario.IdUsuario
inner join Evento on Presenca.IdEvento = Evento.IdEvento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
inner join AcessoLivre on Evento.IdAcessoLivre = AcessoLivre.IdAcessoLivre
where (Usuario.Nome = 'Carol') and (Situacao = 'Confirmado');



