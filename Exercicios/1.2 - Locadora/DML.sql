insert into Marca (Nome)
values  ('Ford'),
		('GM'),
		('Fiat');

insert into Modelo (Nome, IdMarca)
values	('Fiesta',1),
		('Onix',2),
		('Argo',3);

insert into Empresa (Nome)
values  ('Unidas'),
		('Localiza');

insert into Cliente (Nome,CPF)
values ('Fernando','23324442444'),
	   ('Helena','32434554333');

insert into Veiculos (IdModelo,Placa,IdEmpresa)
values  (1,'HEL1805',1),
		(2,'FER1010',1),
		(3,'POR1978',2),
		(1,'LEM9876',2);

insert into Aluguel (IdCliente,IdVeiculo,DataInicio,DataFim)
values  (1,1,'2019-01-19','2019-01-20'),
		(1,2,'2019-01-20','2019-01-21'),
		(2,3,'2019-01-21','2019-01-22'),
		(2,2,'2019-01-22','2019-01-23');