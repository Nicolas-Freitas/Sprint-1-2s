insert into Colaboradores(Nome,Salario)
values  ('Henrique',1000),
		('Juliano',1000),
		('Fernando',1500),
		('Sorocaba',2000);

insert into Itens(descricao)
values	('Computador'),
		('Notebook'),
		('Video game'),
		('Televisão'),
		('Celular');	

insert into Clientes(nome)
values	('Saulo'),
		('Carol');

insert into TipoConserto(descricao)
values	('Manutenção'),
		('Limpeza');

insert into Pedidos(IdCliente,IdItem,IdTipo,NumeroEquipamento,Entrada,Saida)
values	(1,1,1,123,'2002-05-22','2020-05-23'),
		(2,3,1,321,'2002-05-22',''),
		(2,4,2,132,'2002-05-22','');