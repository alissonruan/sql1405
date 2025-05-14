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

CREATE TABLE Cargos(
Cod_Cargo int not null ,
Nome_Cargo varchar(30) not null,
constraint pk_cidade primary key(Cod_Cargo),
constraint un_cargo unique (Nome_Cargo)
);

Create Table Funcionario(
Cod_Func int not null,
Cod_Cargo int not null,
Nome_Func VARCHAR(50) not null,
Salario_Func decimal not null,
RG_Func VARCHAR(15) not null,
constraint pk_func Primary Key(Cod_Func),
constraint foreign key(Cod_Cargo) references Cargos(Cod_Cargo)
);

insert into Cargos values 
(1,"Presidente"),
(2,"Gerente"),
(3,"Supervisor"),
(4,"Revisor"),
(5,"Redator");

Insert Into Funcionario values 
(1,5,"Luis Pereira",3000.00,"27.291.905"),
(2,5,"Antonio Almeida",3000.00,"15.970.247"),
(3,3,"Donizete Ribeiro",2800.00,"27.151.908"),
(4,3,"Gabriela Moura",4700.00,"255.279.145"),
(5,2,"Emilio Duarte",5000.00,"17.278.246"),
(6,1,"Carolina Ferreira",9000.00,"18.154.578");
select * from Cargos;
select * from Funcionario;

