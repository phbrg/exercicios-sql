create database aulaSelect

use aulaSelect 

create table produtos(
idProduto int primary key identity(1,1),  /* sempre sequencia começa em 1 e vai somando, 1,2,3 */
nomeProduto varchar(50) not null,
precoProduto float not null,
dataValidade date
)

insert into produtos (idProduto,nomeProduto,precoProduto,dataValidade)
values (1,'Sabão bão bão',8,'2023-10-28')
insert into produtos (idProduto,nomeProduto,precoProduto,dataValidade)
values (2,'Feijão bão bão',6.78,'2024-08-10')
insert into produtos (idProduto,nomeProduto,precoProduto,dataValidade)
values (3,'Nescau bão bão',5.23,'2025-01-30')

select idProduto,nomeProduto,precoProduto,dataValidade from produtos
order by precoProduto /* desc ( para ordenar do maior para menor ou z para a ) */

select idProduto,nomeProduto,precoProduto,dataValidade from produtos
where precoProduto >= 3 and idProduto <= 10 /* ou precoProduto between 8 and 10 */
/* order by se precisar */

select idProduto,nomeProduto,precoProduto,dataValidade from produtos
where nomeProduto like '%SAB%' /* % serve para achar quaisquer caracteres apos ou antes a frase */