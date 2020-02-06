insert into Habilidades (Habilidade)
values	('Dançar'),
		('Programar'),
		('Esculpir')

insert into Salario (Valor)
values	('1000'),
		('1500'),
		('2000')

insert into Funcionario (NomeFuncionario, IdSalario)
values	('Henrique', 1),
		('Juliano', 2),
		('Fernando', 1),
		('Sorocaba',3),
		('Kleber',1)

insert into Empresa (NomeEmpresa)
values	('Empresa boa'),
		('Empresa Feliz')

insert into Departamento(NomeDepartamento, IdEmpresa)
values		('Departamento Norte', 1),
			('Departamento Sul', 2),
			('Departamento Leste', 1)

insert into FuncionarioHabilidades (IdFuncionario, IdHabilidades)
values  (2,2),
		(3,2),
		(4,3)
		


update Funcionario
set IdSalario = 3
where IdFuncionario = 2