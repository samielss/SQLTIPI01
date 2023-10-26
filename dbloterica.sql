-- apagando o banco de dados
drop database dbloterica;

-- criando o banco de dados
create database dbloterica;

-- mostrando o banco de dados
show databases;

-- acessando o banco de dados
use dbloterica;

-- criando tabelas
create table tbFuncionarios (
    codigo int,
    nome varchar(100),
    email char (100),
    telCel char (10),
    cpf char (14),
    dataEntrada date,
    salario decimal(9,2)
);

create table tbUsuario (
    codigo int,
    usuario varchar (50),
    senha varchar (30)
);
-- acessando tabelas
show tables;

-- descrevendo tabelas
desc tbfuncionarios;
desc tbusuario;

-- inserindo registros nas tabelas
insert into tbfuncionarios(codigo, nome, email, telCel, cpf, dataEntrada, salario)values(1,'Armandino da Silva', 'armandino.silva@hotmail.com','99875-8574','157.857.897-00','2023/10/26',3600.65);
insert into tbfuncionarios(codigo, nome, email, telCel, cpf, dataEntrada, salario)values(2,'Isabelli Oliveira','isabeli@hermione.com','9342-6456', '425.543.465-45', '2000/10/26', 32000.00);
insert into tbfuncionarios(codigo, nome, email, telCel, cpf, dataEntrada, salario)values(3,'Diego Sampaio','didi@sapwca.com..br','45464-3564', '231.546.565.66', '2000/11/22', 99999.00);
-- visualizando os registros/dados inseridos na tablea
select * from tbfuncionarios;