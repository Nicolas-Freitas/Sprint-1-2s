select NumeroEquipamento,Entrada,Saida,Itens.Descricao as DescricaoItem,TipoConserto.Descricao as DescricaoConserto,Clientes.Nome as Cliente 
from Pedidos
inner join Itens on Pedidos.IdItem = Itens.IdItem
inner join TipoConserto on Pedidos.IdTipo = TipoConserto.IdTipo
inner join Clientes on Pedidos.IdCliente = Clientes.IdCliente