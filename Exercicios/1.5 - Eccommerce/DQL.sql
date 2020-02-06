select * from Pedidos 

select Pedidos.IdPedido, Clientes.Nome, NrPedido, Pedidos.DataPedido, Pedidos.Status_ from Pedidos 
inner join Clientes on Clientes.IdCliente = Pedidos.IdCliente;