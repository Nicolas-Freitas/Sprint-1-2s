select * from Funcionario

select * from Habilidades

select * from Departamento

select * from FuncionarioHabilidades

select Funcionario.NomeFuncionario, Departamento.NomeDepartamento from Funcionario
inner join Departamento on Departamento.IdDepartamento = Funcionario.IdFuncionario
