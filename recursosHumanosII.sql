CREATE DATABASE bdRecursosHumanos

go
use bdRecursosHumanos
create table tbDepartamento(
	idDepartamento int primary key identity (1,1)
	,nomeDepartamento varchar (20) not null
)

create table tbProjeto(
	idProjeto int primary key identity (1,1)
	,nomeProjeto varchar (40) not null
	,dataInicioProjeto smalldatetime not null
	,dataFimProjeto smalldatetime not null
)

create table tbFuncionario(
	idFuncionario int primary key identity (1,1)
	,nomeFuncionario varchar (40) not null
	,dataNascimentoFuncionario smalldatetime not null
	,sexoFuncionario varchar (20) not null
	,rgFuncionario varchar (9) not null
	,cpfFuncionario varchar (11) not null
	,idDepartamento int foreign key references tbDepartamento (idDepartamento)
	,salarioFuncionario money not null
)

create table tbDependente(
	idDependente int primary key identity (1,1)
	,nomeDependente varchar (40) not null
	,dataNascimentoDependente smalldatetime not null
	,idFuncionario int foreign key references tbFuncionario (idFuncionario)
)

create table tbFuncionarioProjeto(
	idFuncionarioProjeto int primary key identity (1,1)
	,idFuncionario int foreign key references tbFuncionario (idFuncionario)
	,idProjeto int foreign key references tbProjeto (idProjeto)
	,dataInicioTrabalhoProjeto smalldatetime not null
	,dataFimTrabalhoProjeto smalldatetime not null
)