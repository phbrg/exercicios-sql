create database AC2

use AC2

create table produtos (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50),
    preco FLOAT,
    estoque INT,
    categoria VARCHAR(50)
)

insert into produtos (nome, preco, estoque, categoria)
values ('Leite Minalba 1.5l', 10.89, 34, 'laticinios')

insert into produtos (nome, preco, estoque, categoria)
values ('Café em pó Granja', 12.32, 27, 'comestivel')

insert into produtos (nome, preco, estoque, categoria)
values ('Bicicleta muito midia', 230.65, 3, 'mobilidade')

insert into produtos (nome, preco, estoque, categoria)
values ('Celular dos novos top', 738.98, 5, 'eletronicos')

insert into produtos (nome, preco, estoque, categoria)
values ('Carne picada embalada', 25.71, 27, 'perecivel')

insert into produtos (nome, preco, estoque, categoria)
values ('Bolacha traguinhos', 3.43,74, 'industrializados')

insert into produtos (nome, preco, estoque, categoria)
values ('Alvejante Promoção', 14.29, 51, 'limpeza')

insert into produtos (nome, preco, estoque, categoria)
values ('Coca cola goxtoso 2l', 8.98, 23, 'bebidas')

insert into produtos (nome, preco, estoque, categoria)
values ('Ballantines 750ml', 98.75, 12, 'bebidas')

insert into produtos (nome, preco, estoque, categoria)
values ('Sabonete goxtoso', 4.32, 45, 'higiene')

select * from produtos

select nome, preco from produtos
order by nome ASC

select id, nome, preco, estoque, categoria from produtos
where preco >= 100

select id, nome, preco, estoque, categoria from produtos
where estoque > 0 order by preco

select MAX(preco) from produtos

select MIN(preco) from produtos

select id, nome, preco, estoque, categoria from produtos
where preco >= 500 and preco <= 1000
order by preco

select id, nome, preco, estoque, categoria from produtos
where categoria = 'eletronicos'and preco > 350

select SUM(preco * estoque) from produtos;

select AVG(preco) from produtos
where preco <= 600 and categoria = 'perecivel'

select nome from produtos
where nome like 'SMARTPHONE%'

select MIN(preco) from produtos
where estoque > 0;

select nome, preco, estoque from produtos
where nome like '%Pó' and estoque >= 1
order by preco

select nome, preco, estoque from produtos
where estoque = 0
order by nome

select estoque from produtos
order by estoque

select COUNT(*) from produtos
where estoque = 0

select COUNT(*) from produtos
where estoque > 0 and categoria = 'limpeza'

select * from produtos
where preco < 50

select * from produtos 
where nome like '%promoção%'