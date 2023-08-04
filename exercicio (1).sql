create database exercicioAula

use exercicioAula

create table livros (
	isbn INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(50),
	autor VARCHAR(50),
	anoPubli INT,
	genero VARCHAR(50),
	preco FLOAT
)

insert into livros (titulo, autor, anoPubli, genero, preco)
values('Chapeuzinho vermelho', 'Tite', 2000, 'Romance', 159.99)

insert into livros (titulo, autor, anoPubli, genero, preco)
values('Os 7 anões', 'MC Binladen', 2020, 'Ação', 359.99)

insert into livros (titulo, autor, anoPubli, genero, preco)
values('Fabrica de bolo', 'Carro de luxo 01 não é 02', 1810, 'Suspense', 12.39)

insert into livros (titulo, autor, anoPubli, genero, preco)
values('Biblia', 'Profetas', 0, 'Religioso', 189.79)

insert into livros (titulo, autor, anoPubli, genero, preco)
values('Receitas da vovó', 'Jamm`Podh Al`Mosar', 1935, 'Receitas', 49.99)

update livros set preco = 10000
where isbn = 2

update livros set preco = preco*0.95
where genero = 'Romance'

update livros set preco = preco*0.75
where genero = 'Medicina' and genero = 'Saude'

delete from livros 
where isbn = 12

select autor from livros
where autor like '%MC%'

select genero from livros

select titulo from livros
where titulo like '%Receita%'

select isbn from livros