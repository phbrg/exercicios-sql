use aula1

create table produtos(
codigo int primary key,
nome varchar(30) not null,
dataValidade date,
precoProduto float not null
)

alter table produtos
add fornecedor varchar(30)

alter table produtos
alter column fornecedor varchar(20) not null

