drop database dbGraficaGF;

create database dbGraficaGF;

use dbGraficaGF;

create table tbFuncionarios(idFunc int not null auto_increment, nome varchar(100) not null, cpf char(14) not null unique, salario decimal(9,2) default 0 check(salario>=0), sexo char(1) default 'F' check(sexo in('F','M')), primary key(idFunc));
create table tbFornecedores(idFornc int not null auto_increment, nome varchar(100) not null, cnpj char(17) not null unique, primary key(idFornc));
create table tbUsuario(idUsu int not null auto_increment, nome varchar(50) not null, senha varchar(50) not null, idFunc int not null, primary key(idUsu), foreign key(idFunc)references tbFuncionarios(idFunc));
create table tbProdutos(idProd int not null auto_increment, descricao varchar(100) not null, valor decimal(9,2) default 0 check(valor>=0), quantidade int default 0 check(quantidade>=0), dataEnt date, horaEnt time, idFornc int not null, primary key (idProd), foreign key(idFornc)references tbFornecedores(idFornc));
create table tbClientes(idCli int not null auto_increment, nome varchar(100) not null, cpf char(14) not null unique,idVenda int not null, primary key(idCli));
create table tbVendas(idVenda int not null, dataVenda date, horaVenda time, quantidade int default 0 check(quantidade>=0), idUsu int not null, idProd int not null, idCli int not null, primary key (idVenda),foreign key(idUsu)references tbUsuario(idUsu),foreign key(idProd)references tbProdutos(idProd),foreign key(idCli)references tbClientes(idCli)); 



show tables;

desc tbFuncionarios;
desc tbProdutos;
desc tbClientes;
desc tbVendas;