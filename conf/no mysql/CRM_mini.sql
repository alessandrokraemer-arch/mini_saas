-- aqui um banco de dados que em aula exploro como data warehouse...
create database enterprise;
use enterprise;
create table funcionario (cpfPK varchar(14) not null primary key, primeiroNome varchar(50) not null, sobrenome varchar(50) not null);
create table departamento (idPK int auto_increment primary key, nome varchar(50) not null, telefone varchar(20) not null, ramal varchar(4) not null);
create table equipeatendimento (cpfPK varchar(14) not null primary key, dptoIdFK int not null, foreign key (cpfPK) references funcionario(cpfPK));