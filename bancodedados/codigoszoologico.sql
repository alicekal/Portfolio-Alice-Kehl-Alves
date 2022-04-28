create table animais(
	cod varchar primary key,
	nome varchar,
	ano_nasc varchar,
	setor varchar,
	especie varchar,
	obs varchar,
	peso varchar,
	ultima_visita_vet varchar
);

create table funcionarios(
	pis varchar(30) primary key,
	nome varchar(15),
	carga_horaria int,
	salario decimal(7,2),
	email varchar(30),
	cpf varchar(14),
	cargo varchar(20),
	data_nasc date
);

create table fornecedor(
	cnpj varchar primary key,
	local varchar,
	email varchar,
	produto varchar
);

create table estoque(
  cod varchar(10) primary key,
	produto varchar(20),
	validade date,
	preço decimal(7,2),
	qtd int,
	marca varchar(10),
	data_compra date,
	cod_fornecedor varchar,
	FOREIGN KEY (cod_fornecedor) references fornecedor (cnpj)
);

create table empresas_parceiras(
	COD varchar primary key, 
	email varchar(30),
	funcao varchar(30),
	nome varchar(30),
	aluguel decimal(7,2)
);
				
create table visitantes(
	CPF varchar primary key,
	checkin date,
	nome varchar(30),
	idade int
);

create table bilheteria(
	n_pulseira varchar(25) primary key,
	cod_visitante varchar(30),
	esta_zoo boolean,
	FOREIGN KEY (cod_visitante) references visitantes (CPF)
);

create table contas(
	cod varchar primary key,
	valor_total_estoque varchar,
	mes_ano varchar,
	valor_totl_bilheteria varchar,
	valor_total_funcionarios varchar,
	gastos_extra varchar,
	lucro varchar        
);

dados inseridos via for update
