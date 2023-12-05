drop database dbVendas;

create database dbVendas;

use dbVendas;

create table tbClientes(idCli int not null auto_increment,
nome varchar(45) not null,
telefone char (15) unique,
email varchar(45) not null unique,
primary key(idCli));

create table tbVendedor(
    idVendedor int not null auto_increment,
    nome varchar(100) not null,
    primary key(idVendedor)
);

create table tbPagamento(
    idPaga int not null auto_increment,
    formaPagamento varchar(45) not null,
    primary key(idPaga)
);

create table tbVenda(
idVenda int not null auto_increment,
valorVenda decimal (9,2) not null default 0 check(valorVenda>=0),
dataVenda datetime not null,
idCli int not null, 
idVendedor int not null,
idPaga int not null,
primary key(idVenda),
foreign key(idCli)references tbClientes(idCli),
foreign key(idVendedor)references tbVendedor(idVendedor),
foreign key(idPaga)references tbPagamento(idPaga)
);

create table tbCategoria(
    idCategoria int not null auto_increment,
    nome varchar(100) not null,
    primary key(idCategoria)
);

create table tbFornecedores(
    idFornecedor int not null auto_increment,
    cnpj varchar (19) not null unique,
    nome varchar(100) not null,
    primary key(idFornecedor)
);
create table tbProduto(
    idProduto int not null auto_increment,
    nome varchar (100) not null,
    preco decimal (9,2) default 0 check(preco>=0),
    qtdEstoque int not null default 0 check(preco>=0),
    idCategoria int not null,
    idFornecedor int not null,
    primary key(idProduto),
    foreign key(idCategoria)references tbCategoria(idCategoria),
    foreign key(idFornecedor)references tbFornecedores(idFornecedor)
);
create table tbVendaHasProduto(
    idVenda int not null,
    idProduto int not null,
    foreign key(idVenda)references tbVenda(idVenda),
    foreign key(idProduto)references tbProduto(idProduto)
);

-- inserindo registros nos campos

insert into tbClientes(nome,telefone,email)
    values('Pedro Cavalcante','(11) 94562-4545','pedrinho@gmail.com');
insert into tbClientes(nome,telefone,email)
    values('Vanessa Duarte','(11) 94532-7897','vanessinha1234@hotmail.com');
insert into tbClientes(nome,telefone,email)
    values('João Augusto','(11) 93654-6415','mariaejoaozinho@gmail.com');

insert into tbVendedor(nome)
    values('Parmesão Limonido');
insert into tbVendedor(nome)
    values('Locatone Chicorita');
insert into tbVendedor(nome)
    values('Losângulo Quadrangular');

insert into tbPagamento(formaPagamento)
    values('Cartão de Crédito');
insert into tbPagamento(formaPagamento)
    values('Cartão de Débito');
insert into tbPagamento(formaPagamento)
    values('PIX');

insert into tbVenda(valorVenda,dataVenda,idCli,idVendedor,idPaga)
    values(120.00,'2023/10/30',1,1,1);
insert into tbVenda(valorVenda,dataVenda,idCli,idVendedor,idPaga)
    values(540.00,'2022/04/13',2,2,2);
insert into tbVenda(valorVenda,dataVenda,idCli,idVendedor,idPaga)
    values(890.00,'2023/07/06',2,2,2);

insert into tbVendaHasProduto(idVenda,idProduto)
    values(1,1);
insert into tbVendaHasProduto(idVenda,idProduto)
    values(2,2);
insert into tbVendaHasProduto(idVenda,idProduto)
    values(3,3);

insert into tbProduto(nome,preco,qtdEstoque,idCategoria,idFornecedor)
    values('Adi 2000',799.00,58,1,1);
insert into tbProduto(nome,preco,qtdEstoque,idCategoria,idFornecedor)
    values('Puma 180',699.00,35,1,1);
insert into tbProduto(nome,preco,qtdEstoque,idCategoria,idFornecedor)
    values('Adi 2000 X',799.00,58,1,1);

insert into tbCategoria(nome)
    values('Tênis');
insert into tbCategoria(nome)
    values('Sapato');
insert into tbCategoria(nome)
    values('Sapatilha');

insert into tbFornecedores(cnpj,nome)
    values('47.644.413/0001-72','Vedemo Tênis');
insert into tbFornecedores(cnpj,nome)
    values('78.544.545/0001-54','ArtWalk');
insert into tbFornecedores(cnpj,nome)
    values('87.354.487/0001-52','Tony China');





desc tbClientes;
desc tbVenda;
desc tbVendedor;
desc tbPagamento;
desc tbVendaHasProduto;
desc tbProduto;
desc tbCategoria;
desc tbFornecedores;

select * from tbClientes;
select * from tbVenda;
select * from tbVendedor;
select * from tbPagamento;
select * from tbVendaHasProduto;
select * from tbProduto;
select * from tbCategoria;
select * from tbFornecedores;