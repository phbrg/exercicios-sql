create database aula4

use aula4

create table Alunos(
id int primary key,
nome varchar(50) not null,
nomeCurso varchar(20) not null,
nota1 float,
nota2 float,
media float,
situacao varchar(15)
)

insert into Alunos 
(id,nome,nomeCurso,nota1,nota2)
values (1, 'Pedro um', 'banco de dados', 10, 7)

insert into Alunos 
(id,nome,nomeCurso,nota1,nota2)
values (2, 'Pedro dois', 'banco de dados', 7, 7)

insert into Alunos 
(id,nome,nomeCurso,nota1,nota2)
values (3, 'Pedro tres', 'banco de dados', 3, 5)

insert into Alunos 
(id,nome,nomeCurso,nota1,nota2)
values (4, 'Pedro quatro', 'banco de dados', 4, 6)

insert into Alunos 
(id,nome,nomeCurso,nota1,nota2)
values (5, 'Pedro cinco', 'banco de dados', 7, 9)

select * from Alunos

update Alunos set media = (nota1+nota2)/2

update Alunos set situacao = 'aprovado' where media >= 6
update Alunos set situacao = 'revisao' where media < 6

update Alunos set nome = 'Pedro umm' where id = 1

delete from Alunos where id = 1
