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

select Usuario.Nome, Evento.NomeEvento, Situacao, Instituicao.NomeFantasia, DataEvento, AcessoLivre, Descricao from Presenca
inner join Usuario on Usuario.IdUsuario = Presenca.IdUsuario
inner join Evento on Evento.IdEvento = Presenca.IdEvento
inner join Instituicao on Instituicao.IdInstituicao = Evento.IdInstituicao
where (Usuario.Nome = 'Carol') and (Situacao = 'Confirmada')