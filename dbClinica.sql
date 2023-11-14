-- apagando o banco de dados
drop database dbClinica;

-- criando o banco de dados
create database dbClinica;

-- mostrando os bancos de dados
show databases;

-- acessando o banco de dados
use dbClinica;

-- criando as tabelas
create table tbMedico (idMedico int, nomeMed varchar (45), telMedico char(10));

create table tbConsulta (idConsulta int, dtConsulta datetime, medicoIdMedico int, pacienteIdPaciente int, ReceitaMedica_idReceitaMedica int);

create table tbPaciente (idPaciente int, nomePac varchar(45), telPac char (10), convenio varchar(45));

create table tbReceitaMedica (idReceitaMedica int, descricao varchar(450));

-- mostrando as tabelas
show tables;

-- inserindo registros nas tabelas
insert into tbMedico(idMedico,nomeMed,telMedico)values(1,'Marcos Castro','94323-8765');
insert into tbMedico(idMedico,nomeMed,telMedico)values(2,'Pedro Alves','95432-4234');
insert into tbMedico(idMedico,nomeMed,telMedico)values(3,'Luiz Inácio','94654-3123');
insert into tbMedico(idMedico,nomeMed,telMedico)values(4,'Sandra Adriana','91532-8756');
insert into tbMedico(idMedico,nomeMed,telMedico)values(5,'Vanessa Pedrosa','93453-8354');

insert into tbConsulta(idConsulta,dtConsulta,medicoIdMedico,pacienteIdPaciente,ReceitaMedica_idReceitaMedica)values(1,'2022/03/24',1,1,1);
insert into tbConsulta(idConsulta,dtConsulta,medicoIdMedico,pacienteIdPaciente,ReceitaMedica_idReceitaMedica)values(2,'2023/07/15',2,2,2);
insert into tbConsulta(idConsulta,dtConsulta,medicoIdMedico,pacienteIdPaciente,ReceitaMedica_idReceitaMedica)values(3,'2022/11/27',3,3,3);
insert into tbConsulta(idConsulta,dtConsulta,medicoIdMedico,pacienteIdPaciente,ReceitaMedica_idReceitaMedica)values(4,'2021/04/08',4,4,4);
insert into tbConsulta(idConsulta,dtConsulta,medicoIdMedico,pacienteIdPaciente,ReceitaMedica_idReceitaMedica)values(5,'2023/12/29',5,5,5);

insert into tbPaciente(idPaciente,nomePac,telPac,convenio)values(1,'Joana','98457-5368','Sul América');
insert into tbPaciente(idPaciente,nomePac,telPac,convenio)values(2,'Joana','97895-1865','Bradesco');
insert into tbPaciente(idPaciente,nomePac,telPac,convenio)values(3,'Joana','94654-5231','Albert Einstein');
insert into tbPaciente(idPaciente,nomePac,telPac,convenio)values(4,'Joana','90564-6454','Sul América');
insert into tbPaciente(idPaciente,nomePac,telPac,convenio)values(5,'Joana','95125-5512','Albert Einstein');

insert into tbReceitaMedica(idReceitaMedica,descricao)values(1,'O paciente apresentava dores fortes no intestino delgado logo tive que receita alguma coisa muito boa para resolver isso!');
insert into tbReceitaMedica(idReceitaMedica,descricao)values(2,'O paciente infomou estar descontente com seu aparência facial então receitei uma rotina de skincare para o mesmo');
insert into tbReceitaMedica(idReceitaMedica,descricao)values(3,'O paciente se encontrava viciado em livros do Raphael Montes(tudo normal).');
insert into tbReceitaMedica(idReceitaMedica,descricao)values(4,'O paciente é professor da unidade Largo Treze da instituição de ensino SENAC, não houve o que fazer');
insert into tbReceitaMedica(idReceitaMedica,descricao)values(5,'O paciente apenas queria um atestado para faltar em seu trabalho, uma pena...(cobrei 50 reais)');

-- visualizando os registros das tabelas
select * from tbMedico;
select * from tbConsulta;
select * from tbPaciente;
select * from tbReceitaMedica;