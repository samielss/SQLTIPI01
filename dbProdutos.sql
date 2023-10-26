-- criando o banco de dados
create database dbProdutos;

-- acessando o banco de dados
use dbProdutos;

-- criando tabelas
create table tbCategorias (
    idCategorias int,
    dsCategoria varchar(45)
);

create table tbProdutos (
    idProdutos int,
    dsProduto varchar (45),
    preco float,
    qtdade int,
    foto longblob,
    categoriasIdCategorias int
);

create table pedidoItens (
    idPedidoItens int,
    qtdade int,
    preco float,
    total float,
    pedidosIdPedidos int,
    produtosIdProdutos int
);

create table tbClientes (
    idClientes int,
    nome varchar(100),
    email varchar (100),
    senha varchar (100)
);

create table tbPedidos (
    idPedido int,
    dataa date,
    statuss varchar (45),
    sessao varchar(45)
    clientesIdClientes int
);

-- mostrando o banco de dados
show databases;

-- exibindo as tabelas
show tables;

-- exibindo o conteudo das tabelas
desc tbCategorias;

desc tbProdutos;

desc pedidoItens;

desc tbClientes;

desc tbPedidos;
