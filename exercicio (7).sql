create database aula2

use aula2

create table Alunos(
matricula int primary key,
nome varchar(20),
escola varchar(20)
)

create table Disciplina(
codigo char(5) primary key, 
nome varchar(20),
registro char(5),
escola varchar(20)
)

create table Historico(
matricula int primary key,
codigo char(5),
nota float
)

create table Professor(
registro char(5) primary key,
nome varchar(20),
admissao date
)

alter table Alunos
add telefone char(8)

alter table Alunos
drop column telefone

alter table Professor 
add formacao varchar(15)

alter table Alunos
add email varchar(35)

alter table Disciplina
drop column registro

alter table Historico
add bimestre int

alter table Alunos
drop column escola

drop table Alunos
drop table Disciplina 
drop table Historico
drop table Professor

drop database aula2