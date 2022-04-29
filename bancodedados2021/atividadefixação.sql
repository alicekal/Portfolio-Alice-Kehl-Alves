 1 - create table compras(
	id serial primary key,
	obserações varchar (100),
	data date,
	preço int,
	status  boolean
	);

 2 - insert into compras
(id, obserações, data, preço, status) 
values
(1, 'bola de volei', '2019-03-21', 35, false),
(2, 'carro', '2009-04-17', 20.000, true),
(3, 'cauã', '2005-10-11', 15, true),
(4, 'celular', '2020-12-25', 4.000, true),
(5, 'chocolate', '2021-11-25', 1, true),
(6, 'computador', '2019-05-05', 5.000, true),
(7, 'pipoca', '2010-10-02', 5, true),
(8, 'agua', '2011-03-05', 3, true),
(9, 'cadeira gamer', '2018-09-06', 500, false),
(10, 'bala', '2008-08-05', 0.75, true),
(11, 'carne', '2021-01-01', 75, true),
(12, 'galinha', '2021-04-02', 50, true),
(13, 'vaca leitera', '2021-12-12', 5.000, true),
(14, 'biz', '2019-09-26', 4.000, false),
(15, 'porco', '2021-07-07', 250, true),
(16, 'calça', '2010-02-23', 100, true),
(17, 'the sims', '2013-06-15', 45, false),
(18, 'pasta de dente', '2003-11-16', 1, true),
(19, 'livro', '2012-04-01', 40, true),
(20, 'anel', '2017-12-12', 200, true);

 3 - select * from compras where data >= '2021-01-01' and data <= '2021-12-31';
 4 - select obserações from compras where data >= '2021-01-01' and data <= '2021-01-31';
 5 - select observações, id from compras  where id <=20;
 6 - select * from compras where preço >=15 and  preço <=35;
 7 - select * from compras where status =true;
 8 - select * from compras where id =10;

 9 - create table shopping(
	id serial primary key,
	lojas varchar (100),
	alimentação varchar (100),
	observação varchar (100)
	);
insert into shopping
(id, lojas, alimentação, observação) 
values
(1, 'renner', 'não tem', 'vende roupas'),
(2, 'burger king', 'hamburgueres', 'vende comida e bebida'),
(3, 'youcon', 'não tem', 'vende roupas'),
(4, 'Iplace', 'não tem', 'vende eletronicos');
