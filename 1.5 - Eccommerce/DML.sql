insert into Lojas(Nome)
values ('SenaiShop')

insert into Categorias(Nome, IdLoja)
values  ('Cursos',1),
		('Acessórios',1)

insert into SubCategorias (Nome, IdCategoria)
values  ('Informática Básica', 1),
		('Desenvolvimento', 1),
		('Meio Ambiente', 2),
		('Camisetas', 2)

insert into Produtos (Nome, Valor, IdSubCategoria)
values	('Copo para Café', '25',3),
		('Jaqueta', '100',4),
		('Excel Básico', '350',1),
		('C#', '700',2)

insert into Clientes (Nome)
values  ('Fernando'),
		('Helena')

insert into Pedidos (NrPedido,IdCliente,DataPedido,Status_)
values  ('5455514',1,'2020-01-22', 'Em Andamento'),
		('23232',2,'2020-01-22','Entregue')

insert into PedidosProdutos
values  (1,2),
		(1,2),
		(2,3),
		(2,4);
