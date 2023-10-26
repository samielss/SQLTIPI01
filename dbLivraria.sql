-- deletando a base de dados
drop database dbLivraria;

-- criando a base de dados
create database dbLivraria;

-- acessando o banco de dados
use dbLivraria;

-- criando as tabelas
create table tbLivros (idLivros int, titulo varchar(45), ano varchar(45), autorIdAutor int, categoriaIdCategoria int);

create table tbAutor (idAutor int, nome varchar(45), pais varchar(45));

create table tbCategoria (idCategoria int, nome varchar(45), descricao varchar(45));

-- inserindo registros dentro da tabela tbLivros
insert into tbLivros(idLivros, titulo, ano, autorIdAutor, categoriaIdCategoria)values(1,'Uma mulher no escuro','2019',1,1);
insert into tbLivros(idLivros, titulo, ano, autorIdAutor, categoriaIdCategoria)values(2,'Em algum lugar nas estrelas','2013',2,2);
insert into tbLivros(idLivros, titulo, ano, autorIdAutor, categoriaIdCategoria)values(3,'Dívina Comédia','1472',3,3);
insert into tbLivros(idLivros, titulo, ano, autorIdAutor, categoriaIdCategoria)values(4,'Suicidas','2012',3,3);
insert into tbLivros(idLivros, titulo, ano, autorIdAutor, categoriaIdCategoria)values(4,'Rádio Silencio','2016',3,3);

-- inserindo registros dentro da tabela tbAutor
insert into tbAutor(idAutor,nome,pais)values(1,'Raphael Montes','Brasil');
insert into tbAutor(idAutor,nome,pais)values(2,'Clarice Vanderpool',"Estados Unidos");
insert into tbAutor(idAutor,nome,pais)values(3,'Dante Alighieri','Italia');
insert into tbAutor(idAutor,nome,pais)values(1,'Raphael Montes','Brasil');
insert into tbAutor(idAutor,nome,pais)values(4,'Alice Oseman','Reino Unido');

--inserindo registros dentro da tabela tbCategoria
insert into tbCategoria(idCategoria,nome,descricao)values(1,'Suspense','Um livro sobre uma mulher no escuro');
insert into tbCategoria(idCategoria,nome,descricao)values(2,'Romance','Um livro sobre amizade');
insert into tbCategoria(idCategoria,nome,descricao)values(3,'Poesia','Um livro com diversos canticos');
insert into tbCategoria(idCategoria,nome,descricao)values(4,'Investigação Criminal','Um livro sobre culinaria');
insert into tbCategoria(idCategoria,nome,descricao)values(2,'Romance','Um livro sobre faculdade na adolescencia');

--visualizando dados/registros inseridos na tabela
select * from tbLivros;
select * from tbAutor;
select * from tbCategoria;