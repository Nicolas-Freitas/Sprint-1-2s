select Cliente.Nome, Modelo.Nome as ModeloVeiculo, Aluguel.DataInicio, Aluguel.DataFim from Aluguel 
inner join Modelo on Modelo.IdModelo = Aluguel.IdVeiculo
inner join Cliente on Cliente.IdCliente = Aluguel.IdCliente;
