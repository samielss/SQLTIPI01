drop database dbCinema;

create database dbCinema;

use dbCinema;

create table tbFuncionarios (codigo int, nome varchar(100), email varchar (100), telCel char (10));

insert into tbFuncionarios(codigo,nome,email,telCel)values(1,'Francisco Albuquerque','franciscoalbuquerque@hotmail.com','95284-7852');
insert into tbFuncionarios(codigo,nome,email,telCel)values(2,'Pedro Albuquerque','pedroalbuquerque@oul.com.br','95284-7445');
insert into tbFuncionarios(codigo,nome,email,telCel)values(3,'Maria Albuquerque','mariaalbuquerque@outlook.com','95284-5645');
insert into tbFuncionarios(codigo,nome,email,telCel)values(4,'Joana Albuquerque','joanaalbuquerque@yahoo.com','95284-5458');
insert into tbFuncionarios(codigo,nome,email,telCel)values(5,'Carlos Albuquerque','carlosalbuquerque@gmail.com','5284-7787');

select * from tbFuncionarios;

update tbFuncionarios set nome = 'Francisco Albuquerque Fonseca' where codigo = 1;
update tbFuncionarios set nome = 'Pedro Albuquerque Fonseca' where codigo = 2;
update tbFuncionarios set nome = 'Maria Albuquerque Fonseca' where codigo = 3;
update tbFuncionarios set nome = 'Joana Albuquerque Fonseca' where codigo = 4;

select * from tbFuncionarios;

delete from tbFuncionarios where codigo = 2;

select * from tbFuncionarios;

select codigo as 'Código', nome as 'Nome', telCel as 'Telefone Celular' from tbFuncionarios;