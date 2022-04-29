create table locação(
	cd_locação int primary key,
	cd_filme int,
	título_filme varchar(30),
	devolução date,
	cd_cliente int
);



insert into locação
	(cd_locação, cd_filme, título_filme, devolução, cd_cliente)
	values
	(1010, 201, 'The Matrix', '2011-10-12', 743),
	(1011, 302, 'O Grito', '2011-12-10', 549),
	(1012, 201, 'The Matrix', '2011-12-30', 362);
select * from locação;


alter table locação drop column título_filme;


create table filme(
	cd_filme int primary key,
	título varchar(30)
);


insert into filme
	(cd_filme, título)
	values
	(201, 'The Matrix'),
	(302, 'O Grito');
	select * from filme;
	

alter table locação drop column cd_filme;


alter table locação add column cd_filme int references filme;


select * from locação;


update locação set cd_filme = 201 where cd_locação = 1010 or cd_locação = 1012;


update locação set cd_filme = 302 where cd_locação = 1011;


select * from locação;


select * from locação inner join filme on locação.cd_filme = filme.cd_filme;
