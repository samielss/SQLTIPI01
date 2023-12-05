drop database DB_CDS;

create database DB_CDS;

use DB_CDS;

create table tbArtistas(
codArt int not null auto_increment,
nomeArt varchar(100) not null unique,
primary key(codArt)
);

create table tbGravadoras(
    codGrav int not null auto_increment,
    nomeGrav varchar(50) not null unique,
    primary key(codGrav)
);

create table tbCategorias(
    codCat int not null auto_increment,
    nomeCat varchar(50) not null unique,
    primary key(codCat)
);

create table tbEstados(
    siglaEst char(2) not null,
    nomeEst varchar(50) not null unique,
    primary key(siglaEst)
);

create table tbCidades(
    codCid int not null auto_increment,
    siglaEst char(2) not null,
    nomeCid varchar(50) not null,
    primary key(codCid),
    foreign key(siglaEst)references tbEstados(siglaEst)
);

create table tbClientes(
    codCli int not null auto_increment,
    codCid int not null,
    nomeCli varchar(50) not null,
    endCli varchar(100) not null,
    rendaCli decimal(9,2) not null default 0 check(rendaCli>=0),
    sexoCli char(1) not null default 'F' check(sexoCli in('F','M')),
    primary key(codCli),
    foreign key(codCid)references tbCidades(codCid)
);

create table tbConjuge(
    codConj int not null auto_increment,
    nomeConj varchar(50) not null,
    rendaConj decimal not null default 0 check(rendaConj>=0),
    sexoConj char(1) not null default 'F' check(sexoConj in('F','M')),
    primary key(codConj)
);

create table tbFuncionarios(
    codFunc int not null,
    nomeFunc varchar(50) not null,
    endFunc varchar(100) not null,
    salFunc decimal(9,2) default 0 check(salFunc>=0),
    sexoFunc char(1) not null default 'F' check(sexoFunc in('F','M')),
    primary key(codFunc)
);

create table tbDependentes(
    codDep int not null,
    codFunc int not null,
    nomeDep varchar(100) not null,
    sexoDep char(1) not null default 'F' check(sexoDep in('F','M'))
);

create table tbTitulos(
    codTit int not null auto_increment,
    codCat int not null,
    codGrav int not null,
    nomeCD varchar(50) not null unique,
    valCD decimal(9,2) not null default 0 check(valCD>=0),
    qtdEstq int not null default 0 check(qtdEstq >=0),
    primary key(codTit),
    foreign key(codCat)references tbCategorias(codCat),
    foreign key(codGrav)references tbGravadoras(codGrav)
);

create table tbPedidos(
    numPed int not null auto_increment,
    codCli int not null,
    codFunc int not null,
    dataPed datetime not null,
    valorPed decimal(9,2) not null default 0 check(valorPed>=0),
    primary key(numPed),
    foreign key(codCli)references tbClientes(codCli),
    foreign key(codFunc)references tbFuncionarios(codFunc)
);

create table tbTitulosPedido(
    numPed int not null,
    codTit int not null,
    qtdCD int not null check(qtdCD>=1),
    valCD decimal(9,2) not null check(valCD>=0),
    foreign key(numPed)references tbPedidos(numPed),
    foreign key(codTit)references tbTitulos(codTit)
);

create table tbTitulosArtista(
    codTit int not null,
    codArt int not null,
    foreign key(codTit)references tbTitulos(codTit),
    foreign key(codArt)references tbArtistas(codArt)

);

insert into tbArtistas(nomeArt)values('MARISA MONTE');
insert into tbArtistas(nomeArt)values('GILBERTO GIL');
insert into tbArtistas(nomeArt)values('CAETANO VELOSO');
insert into tbArtistas(nomeArt)values('MILTON NASCIMENTO');
insert into tbArtistas(nomeArt)values('LEGIÃO URBANA');
insert into tbArtistas(nomeArt)values('THE BEATLES');
insert into tbArtistas(nomeArt)values('RITA LEE');

insert into tbGravadoras(nomeGrav)values('POLYGRAM');
insert into tbGravadoras(nomeGrav)values('EMI');
insert into tbGravadoras(nomeGrav)values('SOM LIVRE');
insert into tbGravadoras(nomeGrav)values('SOM MUSIC');

insert into tbCategorias(nomeCat)values('MPB');
insert into tbCategorias(nomeCat)values('TRILHA SONORA');
insert into tbCategorias(nomeCat)values('ROCK INTERNACIONAL');
insert into tbCategorias(nomeCat)values('ROCK NACIONAL');

insert into tbEstados(siglaEst,nomeEst)values('SP','SÃO PAULO');
insert into tbEstados(siglaEst,nomeEst)values('MG','MNAS GERAIS');
insert into tbEstados(siglaEst,nomeEst)values('RJ','RIO DE JANEIRO');

insert into tbCidades(siglaEst,nomeCid)values('SP','SÃO PAULO');
insert into tbCidades(siglaEst,nomeCid)values('SP','SOROCABA');
insert into tbCidades(siglaEst,nomeCid)values('SP','JUNDAÍ');
insert into tbCidades(siglaEst,nomeCid)values('SP','AMERICANA');
insert into tbCidades(siglaEst,nomeCid)values('SP','ARARAQUARA');
insert into tbCidades(siglaEst,nomeCid)values('SP','OURO PRETO');
insert into tbCidades(siglaEst,nomeCid)values('SP','CACHOEIRA DO ITAPEMIRIM');

insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(1,'JOSÉ NOGUEIRA','RUA A',1500.00,'M');
insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(1,'ÂNGELO PEREIRA','RUA B',2000.00,'M');
insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(1,'ALÉM MAR PARANHOS','RUA C',1500.00,'M');
insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(1,'CATARINA SOUZA','RUA D',892.00,'F');
insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(1,'VAGNER COSTA','RUA E',950.00,'M');
insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(2,'ANTENOR DA COSTA','RUA F',1582.00,'M');
insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(2,'MARIA AMÉLIA DA COSTA','RUA G',1152.00,'F');
insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(2,'PAULO ROBERTO SILVA','RUA H',3250.00,'M');
insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(3,'FÁTIMA SOUZA','RUA I',1632.00,'F');
insert into tbClientes(codCid,nomeCli,endCli,rendaCli,sexoCli)values(3,'JOEL DA ROCHA','RUA J',2000.00,'M');





