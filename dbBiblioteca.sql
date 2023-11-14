-- apagando o banco de dados
drop database dbBiblioteca;

-- criando o banco de dados
create database dbBiblioteca;

-- acess database
use dbBiblioteca;

-- create tables
create table tbCategorias(IdCategoria smallint(6), Categoria varchar(30));
create table tbEditoras(IdEditora smallint (6), NomeEditora varchar(50));
create table tbLivro(IdLivro smallint(6),NomeLivro varchar(70),IdCategoria smallint(6),IdAutor smallint(6),DataPub date,PrecoLivro decimal(6,2), IdEditora smallint(6), ISBN13 int, ISBN10 int);
create table tbAutores(IdAutor smallint (6),Nome varchar(30), SobrenomeAutor varchar(60));


alter table tbCategorias modify column IdCategoria int;


alter table tbEditoras add Email varchar(50);
alter table tbEditoras add cnpj char(18);
alter table tbEditoras add telefone char(11);

alter table tbEditoras modify column IdEditora int;
alter table tbLivro modify column IdEditora int;


alter table tbLivro drop column NomeLivro;
alter table tbLivro drop column PrecoLivro;

alter table tbLivro add Descricao varchar(150);
alter table tbLivro add Valor decimal (9,2);
alter table tbLivro add DataEntrada datetime;
alter table tbLivro add Quantidade int;

alter table tbLivro modify column IdLivro int;
alter table tbLivro modify column IdCAtegoria int;
alter table tbLivro modify column IdAutor int;
alter table tbLivro modify column DataPub datetime;


alter table tbAutores modify column IdAutor int;

alter table tbAutores add EmailAutor varchar(50);

-- insert values 
insert into tbCategorias(idCategoria,Categoria)values(1,'Suspense');
insert into tbCategorias(idCategoria,Categoria)values(2,'Romance');
insert into tbCategorias(idCategoria,Categoria)values(3,'Poesia');
insert into tbCategorias(idCategoria,Categoria)values(4,'Investigação Criminal');
insert into tbCategorias(idCategoria,Categoria)values(2,'Romance');

insert into tbEditoras(IdEditora,NomeEditora,Email,cnpj,telefone)values(1,'editora@gmail.com','312-321-313001','119372-3213','Pedrinho');
insert into tbEditoras(IdEditora,NomeEditora,Email,cnpj,telefone)values(2,'editora@gmail.com','312-321-313001','119372-3213','Mariazinha');
insert into tbEditoras(IdEditora,NomeEditora,Email,cnpj,telefone)values(3,'editora@gmail.com','312-321-313001','119372-3213','Luizinha');
insert into tbEditoras(IdEditora,NomeEditora,Email,cnpj,telefone)values(4,'editora@gmail.com','312-321-313001','119372-3213','Carlinhe');
insert into tbEditoras(IdEditora,NomeEditora,Email,cnpj,telefone)values(5,'editora@gmail.com','312-321-313001','119372-3213','Carlota');

insert into tbLivro(IdLivro, Descricao, IdCategoria, IdAutor, DataPub, Valor, IdEditora, ISBN13, ISBN10)values(1,'Uma mulher no escuro',1,1,'2019',29.99,1,1,1);
insert into tbLivro(IdLivro, Descricao, IdCategoria, IdAutor, DataPub, Valor, IdEditora, ISBN13, ISBN10)values(2,'Em algum lugar nas estrelas',2,2,'2013',29.99,2,2,2);
insert into tbLivro(IdLivro, Descricao, IdCategoria, IdAutor, DataPub, Valor, IdEditora, ISBN13, ISBN10)values(3,'Dívina Comédia',3,3,'1472',29.99,3,3,3);
insert into tbLivro(IdLivro, Descricao, IdCategoria, IdAutor, DataPub, Valor, IdEditora, ISBN13, ISBN10)values(4,'Suicidas',3,3,'2012',29.99,3,3,3);
insert into tbLivro(IdLivro, Descricao, IdCategoria, IdAutor, DataPub, Valor, IdEditora, ISBN13, ISBN10)values(4,'Rádio Silencio',3,3,'2016',29.99,3,3,3);

insert into tbAutores(IdAutor,Nome,SobrenomeAutor)values(1,'Raphael','Montes');
insert into tbAutores(IdAutor,Nome,SobrenomeAutor)values(2,'Clarice','Vanderpool');
insert into tbAutores(IdAutor,Nome,SobrenomeAutor)values(3,'Dante','Alighieri');
insert into tbAutores(IdAutor,Nome,SobrenomeAutor)values(1,'Raphael','Montes');
insert into tbAutores(IdAutor,Nome,SobrenomeAutor)values(4,'Alice','Oseman');

-- describe tables
desc tbCategorias;
desc tbEditoras;
desc tbLivro;
desc tbAutores;

-- view values
select * from tbCategorias;
select * from tbEditoras;
select * from tbLivro;
select * from tbAutores;




