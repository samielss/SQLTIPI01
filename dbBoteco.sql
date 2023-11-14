-- apagando o banco de dados
drop database dbBoteco;

-- criando banco de dados
create database dbBoteco;

-- mostrando os bancos de dados
show databases;

-- acessando o banco de dados
use dbBoteco;

-- criando as tabelas
create table tbFuncionarios(codFunc int, nome varchar (100), email varchar(100), fone char(10), cpf char(14), dataNasc date, logradouro varchar(100), numero char (5), cep char(9), bairro varchar(100), cidade varchar(100), siglaEst char(2));

create table tbUsuarios (codUsu int, nome varchar(30), senha varchar(20));

create table tbFornecedores (codForn int, nome varchar(100), email varchar(100), telefone char(10), cnpj char(20));

create table tbProdutos (codProd int, nome varchar(100), valor decimal(9,2), qtde int, dataEnt date, horaEnt time);

create table tbClientes  (codCli int, nome varchar(100), email varchar(100), telCel char(10), cpf char(14));

create table tbVendas (codVenda int, codProd int, codCli int, codUsu int, qtde int, preco decimal(9,2), dataVenda date, horaVenda time);

-- inserindo os registros nas tabelas
insert into tbFuncionarios(codFunc, nome ,email, fone, cpf, dataNasc, logradouro, numero, cep, bairro, cidade, siglaEst)values(1,'Samuel Nicolas Oliveira Rocha','samukinhagameplays@gmail.com','94634-3632','421.321.322.94','2003/05/10','Rua Alves João','321','325672-192','Marte','São Joaqui da Roça','MG');

insert into tbUsuarios(codUsu,nome,senha)values(1,'Samumu','hashua');

insert into tbFornecedores(codForn,nome,email,telefone,cnpj)values(1,'Pedroca do Vale','pedrinho@gmail.com','93826-7675','03.361.252/0001-34');

insert into tbProdutos (codProd,nome,valor,qtde,dataEnt,horaEnt)values(1,"Cervejinha da boa",213.99,'436','2001/01/04','12:43');

insert into tbClientes (codCli,nome,email,telCel,cpf)values(1,'Claudinho','buchecha@gmail.com','9321-4234','312.489.984-78');

insert into tbVendas (codVenda,codProd,codCli,codUsu,qtde,preco,dataVenda,horaVenda)values(1,1,1,1,5,1069.95,'2034/05/24','13:54');

-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbProdutos;
desc tbClientes;
desc tbVendas;

-- visualizando os registros nas tabelas
select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbFornecedores;
select * from tbProdutos;
select * from tbClientes;
select * from tbVendas;