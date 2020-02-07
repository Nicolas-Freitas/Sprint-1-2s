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
values	('1111111111111', 'Escola SENAI de Inform�tica', 'Alameda Bar�o de Limeira,538')
GO

insert into Usuario(Nome,Email,Senha,DataCadastro,Genero, IdTipousuario)
values  ('Administrador', 'adm@adm.com','adm123', '06/02/2020', 'N�o informado', 1),
		('Carol', 'carol@email.com','carol123', '06/02/2020', 'Feminino', 2),
		('Saulo', 'saulo@email.com','saulo123', '06/02/2020', 'Masculino', 2)

insert into Evento(NomeEvento,AcessoLivre,DataEvento,Descricao, IdTipoEvento, IdInstituicao)
values	('Orienta��o a objetos', 1, '07/02/2020', 'Conceitos sobre os pilares da programa��o orientada a objetos',1 ,1),
		('Ciclo de vida', 0, '08/02/2020', 'Como utilizar os ciclos de vida com a biblioteca ReactJs',2 ,1),
		('Intrudu��o a SQL', 1, '09/02/2020', 'Comandos b�sicos utilizando SQL Server',3 ,1)
GO

insert into Presenca(IdUsuario,IdEvento,Situacao)
values	(2,2,'Confirmada'),
		(2,3,'N�o Confirmada'),
		(3,1,'Confirmada')