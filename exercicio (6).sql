create database aulaDML

use aulaDML

create table produtos (
id int primary key,
nomeProduto varchar(30) not null,
descricaoProduto varchar(100) not null,
dataValidade date,
tipo varchar(15) not null,
precoCompra float not null,
precoVenda float
)

insert into produtos
(id,nomeProduto,descricaoProduto,dataValidade,tipo,precoCompra,precoVenda)
values (1, 'Massa pizza fresca','Massa fresca hmmmmmmmm','2023-05-15','Massa fresca',8.76,12.29) 

insert into produtos
(id,nomeProduto,descricaoProduto,dataValidade,tipo,precoCompra,precoVenda)
values (2, 'Bom Bril','Palha de aço xua xua xua',null,'Palha de aço',5,7.5) 

select * from produtos

delete from produtos
where id=1

update produtos set nomeProduto='Massa de pizza jorge', precoCompra=6.84
where id=1

update produtos set precoVenda=precoCompra*1.3