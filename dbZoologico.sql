drop database dbZoologico;

-- Crie uma database chamada ZOOLOGICO:
create database dbZoologico;
use database dbZoologico;
-- Na database ZOOLOGICO, crie uma tabela chamada ANIMAIS com os seguintes campos:
create table tbAnimais(codigo int, tipo char(13), nome char(30), idade int, valor decimal(10,2));

insert into tbAnimais(codigo,tipo,nome,idade,valor)values(1,'Cachorro','Djudi',3,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(2,'Cachorro','Sula',5,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(3,'Cachorro','Sarina',7,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(4,'Gato','Pipa',2,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(5,'Gato','Saramgue',2,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(6,'Gato','Clarences',1,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(7,'Coruja','Agnes',0,700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(8,'Coruja','Arabela',1,700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(9,'Sapo','Quash',1,100.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(10,'Peixe','Fish',0,100.00);

-- Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS
select * from tbAnimais;

-- Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS apresentando todos os registros da tabela.
select tipo, nome from tbAnimais;

-- Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS apresentando todos os registros da tabela.
select tipo, nome e idade from tbAnimais;

-- Escreva um comando que  



