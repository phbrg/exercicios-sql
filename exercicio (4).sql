create database ac1

use ac1

create table veiculos(
placa varchar(7) primary key not null,
marca varchar(20) not null,
modelo varchar(20) not null,
cor varchar(20) not null,
opcionais varchar(100),
ano int not null,
valorcompra float not null
)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('DAB750O','Chevrolet','Cobalt','Prata',2013,23700)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('YUA750K','Chevrolet','Camaro','Preto',2005,43700)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('GHU750C','Chevrolet','Camaro','Amarelo',2010,23700)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('CJT523A','Volks','Onix','Vermelho',2012,45200)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('WAS189D','Volks','Jetta','Azul',2013,50000)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('DAB817H','Volks','Nivus','Preto',2006,32400)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('AGC124F','Ford','Ka','Branco',2014,33000)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('CHK912K','Ford','Fusion','Vermelho',2004,23040)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('ZCW812L','Ford','Ecosport','Branco',2004,23040)

insert into veiculos
(placa,marca,modelo,cor,ano,valorcompra)
values ('DAB567R','Fiat','Palio','Preto',1999,21050)


alter table veiculos
add valorvenda float;

update veiculos set valorvenda = valorcompra*1.40

delete from veiculos where placa = 'DAB567R'

alter table veiculos
add cidaderegistro varchar(30)

update veiculos set cidaderegistro = 'S�o Paulo' where marca = 'Chevrolet'
update veiculos set cidaderegistro = 'Amazonas' where marca = 'Volks'
update veiculos set cidaderegistro = 'Rio de Janeiro' where marca = 'Ford'
update veiculos set cidaderegistro = 'Mato Grosso do Sul' where marca = 'Fiat'

update veiculos set valorvenda = valorvenda*0.90 where ano between 2000 and 2005
update veiculos set valorvenda = valorvenda*0.95 where ano > 2013

update veiculos set valorvenda = valorvenda*0.97 where marca = 'Ford'
update veiculos set valorvenda = valorvenda*0.95 where modelo = 'Palio'

alter table veiculos
drop column opcionais