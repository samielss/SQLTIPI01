-- criando o banco de dados
create database dbLocadora;

-- mostrando o banco de dados
show database;

-- acessando o banco deados
use dbLocadora;

-- criando as tabelas
create table tbEmprestimo (
    numFilme int,
    numero int,
    tipo varchar (50),
    cliente int,
    dataRet date,
    dataDev date,
    valorPg float
);

create table tbMidia (
    numFilme int,
    numero int,
    tipo varchar (50)
);

create table tbFilme (
    numFilme int,
    tituloOriginal varchar (50),
    tituloPt varchar (50),
    duracao int,
    dataLancamento date,
    direcao varchar (250),
    categoria varchar (50),
    classificacao int
);

create table tbAtor (
    cod int,
    dataNasc date,
    nacionalidade varchar (50),
    nomeReal varchar (50),
    nomeArtistico varchar (50)
);

create table tbCliente (
    numCliente int,
    nome varchar (50),
    endereco varchar (50),
    foneRes varchar (50),
    foneCel varchar (50)
);

create table tbClassificacao (
    cod int,
    nome varchar (50),
    preco float
);

create table tbEstrela (
    numFilme int,
    codator int
);

-- mostrando as tabelas 
show tables;

-- descrevendo as tabelas
desc tbEmprestimo;

desc tbMidia;

desc tbFilme;

desc tbAtor;

desc tbCliente;

desc tbClassificacao;

desc tbEstrela;
