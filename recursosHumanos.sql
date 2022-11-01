use bdRecursosHumanos

insert into tbDepartamento (nomeDepartamento)
values

	('Compras')
	,('Vendas')
	,('TI')

select * from tbDepartamento

insert into tbProjeto (nomeProjeto, dataInicioProjeto, dataFimProjeto)
values
	
	('5S', '01/01/2014' ,'20/02/2017')
	,('Sustentabilidade', '03/03/2015', '04/04/2018')
	,('Residuo Zero', '02/02/2016', '09/09/2020')

select * from tbProjeto

insert into tbFuncionario (nomeFuncionario, dataNascimentoFuncionario, sexoFuncionario, rgFuncionario, cpfFuncionario, idDepartamento, salarioFuncionario)
values

	('José Santos', '20/02/1989', 'M', '12.292.922-x', '123.873.222-00', 1,	'1234.87')
	,('Mariana Costa Silva', '04/03/1997', 'F', '14.829.122-6', '728.222.322-90', 1, '965.00')
	,('Patricia Silveira', '09/09/1983', 'F', '23.373.211-9', '822.212.433-00', 2, '4329.90')
	,('Silvana Gomes de Sá', '23/09/1987', 'F', '23.233.332-9', '273.233.122-99', 2, '4345.33')
	,('Marcio Almeida Gomes', '05/05/1999', 'M', '43.443.222-8', '232.123.456-03', 3, '2343.98')
	,('Felipe Andrade Felicio', '07/03/1992', 'F', '32.982.989-9', '124.822.982-23', 3, '8790.09')
	,('Maristela Felix Santana', '08/09/1987', 'F', '33.829.292-7', '234.282.882-84', 3, '4453.76')
	,('Cristiano Mota Andrade', '28/09/1983', 'M', '21.432.544-8', '543.654.456-98', 3, '8732.77')
	,('Paulo Carlos Santos', '22/09/1999', 'M', '27.233.243-9', '521.222.762-00', 3, '7382.98')
	,('Melissa Sato', '07/08/1985', 'F', '28.282.222-22', '235.786.333-00', 2, '3456.87')
	
select * from tbFuncionario

insert into tbDependente (idDependente, nomeDependente, dataNascimentoDependente,idFuncionario)
values
	
	(1, 'João Pedro Santos','20/02/2014', 1)
	,(2, 'Maria Alice Santos', '20/02/2014', 1)
	,(3, 'Sergio Gomes', '30/03/2013', 4)
	,(4, 'Marcos Vinicius Andrade', '23/02/2009', 8)
	,(5, 'Akemi Sato', '04/04/2014', 10)

selcet * from tbDependente

insert into tbFuncionarioProjeto (idFuncionarioProjeto, idFuncionario, idProjeto, dataInicioTrabalhoProjeto, dataFimTrabalhoProjeto)
values
	(1, 1, 1, '10/02/2015', '20/08/2015')
	,(2, 1, 2, '09/09/2016', '31/12/2016')
	,(3, 1, 3, '02/01/2016', '28/01/2016')
	,(4, 2,1, '08/09/2015', '09/09/2017')
	,(5, 3, 1, '03/03/2016', '28/09/2016')
	,(6, 8, 1, '06/06/2015', '08/08/2017')
	,(7, 9, 3, '23/02/2016', '23/02/2017')
	,(8, 10, 2, '23/09/2015', '31/12/2016')
	,(9, 10, 1, '28/02/2016', '31/12/2016')
	,(10, 4, 1, '02/08/2015', '31/12/2015')

select * from tbFuncionarioProjeto
