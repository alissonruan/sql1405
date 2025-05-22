/*create database empresa;
use empresa;

create table cargo(
cod_cargo int primary key not null,
nome_cargo varchar(50) not null,
constraint un_cargo unique (nome_cargo)
);


create table funcionario(
cod_funcionario int primary key not null,
cod_cargo int not null,
nome_funcionario varchar(50) not null,
salario_funcionario decimal(10,2) not null,
rg_funcionario decimal not null,
foreign key (cod_cargo) references cargo (cod_cargo)
);

drop table funcionario;
drop table cargo;

insert into cargo values
(1, 'Presidente'),
(2, 'Gerente'),
(3, 'Supervisor'),
(4, 'Revisor'),
(5, 'Redator');

select * from cargo;

insert into funcionario values
(1, 5, 'Luiz Pereira', 3000.00, '27.291.905'),
(2, 5, 'Antonio Almeida, 3000.00', '15.970.247'),
(3, 3, 'Donizete Ribeiro', 2800.00, '27.151.908'),
(4, 3, 'Gabriela Moura', 4700.00, '255.279.145'),
(5, 2, 'Emilia Duarte', 5000.00, '17.278.246'),
(6, 1, 'Carolina Ferreira', 9000.00, '18.154.578');

select * from funcionario;*/

create database empresa;
use empresa;

create table Cargos(
Cod_Cargo int,
Nome_Cargo varchar(30) not null,
constraint pk_cidade primary key(Cod_Cargo),
constraint un_cargo unique (Nome_Cargo)
);

create table Funcionario(
Cod_Func int not null,
Cod_Cargo int not null,
Nome_Func VARCHAR(50) not null,
Salario_Func decimal not null,
RG_Func VARCHAR(15) not null,
constraint pk_func Primary Key(Cod_Func),
constraint foreign key(Cod_Cargo) references Cargos(Cod_Cargo)
);

create table Dependente(
Cod_dep int not null,
Cod_Func int not null,
Nome_dep varchar(100),
constraint pk_dep primary key (Cod_dep),
constraint foreign key (Cod_Func) references Funcionario (Cod_Func)
);

insert into Cargos values (1,"Presidente"), (2,"Gerente"), (3,"Supervisor"), (4,"Revisor"), (5,"Redator");
select * from Cargos;

Insert Into Funcionario values (1 ,5, "Luis Pereira",3000.00,"27.291.905"), (2, 5, "Antonio Almeida",3000.00,"15.970.247"), (3, 3, "Donizete Ribeiro", 2800.00, "27.151.908"), (4, 3, "Gabriela Moura", 4700.00,"255.279.145"), (5,2,"Emilio Duarte",5000.00,"17.278.246"), (6,1,"Carolina Ferreira",9000.00,"18.154.578");
select * from Funcionario;

insert into Dependente values(1, 1, 'Maria Leme' ), (2, 1, 'Camila Leme'), (3, 1, 'Josival Leme'), (4, 2, 'Clovis Almeida'), (5, 2, 'Durval Almeida'), (6, 5, 'Fabiana Duarte'), (7, 5, 'Joana Duarte');
select * from Dependente;

/*INNER JOIN: RETORNA REGISTRO DE AMBAS AS TABELAS USANDO O ON*/
select Cargos.Nome_Cargo, Funcionario.Nome_Func
from Cargos inner join Funcionario
on Cargos.Cod_Cargo = Funcionario.Cod_Cargo;

/*INNER JOIN: RETORNA REGISTRO DE AMBAS AS TABELAS USANDO O ON*/
select Cargos.Nome_Cargo, Funcionario.Nome_Func
from Cargos, Funcionario
where Cargos.Cod_Cargo = Funcionario.Cod_Cargo;


/*LEFT JOIN: RETORNA TODOS OS REGISTROS DA TABELA DIREITA À ESQUERDA*/
select Cargos.Nome_Cargo, Funcionario.Nome_Func
from Cargos left outer join Funcionario
on Cargos.Cod_Cargo = Funcionario.Cod_Cargo;

/*RIGHT JOIN: RETORNA TODODS OS REGISTROS DA ESQUERDA È ESQUERDA*/
select Cargos.Nome_Cargo, Funcionario.Nome_Func
from Cargos right outer join Funcionario
on Cargos.Cod_Cargo = Funcionario.Cod_Cargo;

select Cargos.Nome_Cargo, Funcionario.Nome_Func, Dependente.Nome_dep
from Cargos inner join Funcionario
on Cargos.Cod_Cargo = Funcionario.Cod_Cargo
inner join Dependente
on Funcionario.Cod_Func = Dependente.Cod_Func;
