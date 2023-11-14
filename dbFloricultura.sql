drop database dbFlora;

create database dbFlora;

use dbFlora;

create table tbFuncionarios(nome varchar (10), cpf char(2));
create table tbPerson(id varchar (10), LastName varchar(50), FirstName varchar(50), Adress varchar (100), City varchar(50));

insert into tbPerson(id,LastName,FirstName,Adress,City)values(1,'Hansen','Ola','Timoteivn 10','Sandnes');
insert into tbPerson(id,LastName,FirstName,Adress,City)values(1,'Svendson','Tove','Borgvn 23','Sandnes');
insert into tbPerson(id,LastName,FirstName,Adress,City)values(1,'Pettersen','Kari','Storgt 20','Stvanger');

show tables;

desc tbFuncionarios;

-- adcionando colunas em uma tabela criada 

alter table tbFuncionarios add email varchar (7);
alter table tbFuncionarios add sobrenome varchar (13);
alter table tbFuncionarios add telefone char(11);
alter table tbFuncionarios add logradouro varchar(100);
alter table tbFuncionarios add numero char(10);
alter table tbFuncionarios add bairro varchar(100);
alter table tbFuncionarios add cnpj int(11);

alter table tbPerson add DAteOdBirth date;


desc tbFuncionarios;

-- alterando uma coluna já criada
alter table tbFuncionarios modify column nome varchar (50);
alter table tbFuncionarios modify column cpf char (14);

alter table tbPerson modify column DAteOdBirth year;

desc tbFuncionarios;

-- apagando coluna
alter table tbFuncionarios drop column cnpj;

desc tbFuncionarios;
desc tbPerson;

select * from tbPerson;



