 Escola S.
 Aluna: Alice Kehl Alves.
 Turma: 3B. 06/04/2022.
 Banco de Dados. Atividade avaliativa.

 Criação da tabela:

 create table netflix(
	ID varchar primary key,
	Tipo varchar,
	Titulo varchar,
	Diretor varchar,
	Atores varchar,
	Pais varchar,
	Data_Adicionado date,
	Ano_Lancamento int,
	Classificacao_Indicativa varchar,
	Duracao varchar,
	Genero varchar,
	Descricao varchar
);

1 - Importar a tabela 'netlix_titles.csv' utilizando o PostgreSQL (PgAdmin). A importação pode ser tanto utilizando o shell SQL quanto de forma gráfica. Caso escolha shell SQL: Enviar o código utilizado. Caso escolha a forma gráfica: Enviar um print da tela de importação.

select * from netflix

 2 - Utilizando a linguagem Postgres, visualizar todos os FILMES contidos na tabela, mostrando apenas as colunas de TITULO, PAIS, CLASSIFICACAO_INDICATIVA, DURACAO e GENERO.
 R = select Titulo, Pais, Classificacao_Indicativa, Duracao, Genero from netflix where tipo ilike 'movie'

 3 - Exportar a tabela da questão 2.
 R =\copy ( select Titulo, Pais, Classificacao_Indicativa, Duracao, Genero from netflix where tipo ilike 'movie' ) to 'C:\Users\alice_k_alves\Downloads\filmes_selecionados.csv' delimiter ';' csv header;

 4 - Utilizando a linguagem Postgres, visualizar todas as entidades cadastradas que sejam do segundo semestre do ano de 2019, mostrando todas as colunas.
 R = select * from netflix where data_adicionado >= '2019/07/01'

 5 - Utilizando a linguagem Postgres, visualizar todas as entidades cadastradas em que o ator 'Adam Sandler' participe.
 R = select * from netflix where atores ilike '%adam sandler%'

 6 - Utilizando a linguagem Postgres, visualizar a descrição de todas as entidades do diretor 'Quentin Tarantino'.
 R = select Descricao from netflix where diretor ilike '%Quentin Tarantino%'

 7 -  Utilizando a linguagem Postgres, visualizar a descrição de todas as entidades que contenham como genero o drama.
 R = select Descricao from netflix where genero ilike '%drama%'

 8 – Criação da tabela:

 create table laptop(
	ID int primary key,
	Empresa varchar,
	Produto varchar,
	Tipo varchar,
	Polegadas decimal(3,1),
	ResolucaoTela varchar,
	CPU varchar,
	RAM varchar,
	Memoria varchar,
	GPU varchar,
	SistemaOperacional varchar,
	Peso varchar,
	PrecoEuros decimal(6,2)
	);

 Importar a tabela 'laptop_price.csv' utilizando o PostgreSQL (PgAdmin). A importação pode ser tanto utilizando o shell SQL quanto de forma gráfica. Caso escolha shell SQL: Enviar o código utilizado. Caso escolha a forma gráfica: Enviar um print da tela de importação.
 R = \copy laptop from 'C:\Users\alice_k_alves\Downloads\AtividadeAvaliativa1\AtividadeAvaliativa\laptop_price.csv' delimiter ',' csv header; 

 9 - Utilizando a linguagem Postgres, visualizar a tabela 'laptop_price.csv' contendo o preço atual dos laptops e o preco sugerido, sendo ele, uma promoção de 10% para todos os computadores da Dell.
 R = select precoeuros, (precoeuros * 0.10) as preco_sugerido from
laptop

 10 - Exportar a tabela da questão 9.
 R = \copy ( select precoeuros, (precoeuros * 0.10) as preco_sugerido from
Laptop ) to 'C:\Users\alice_k_alves\Downloads\preco_sugerido.csv' delimiter ';' csv header;

 11 - Utilizando a linguagem Postgres, fazer 2 visualizações da tabela 'laptop_price.csv' utilizando funções do Postgres vistas em sala.
 R = select round(avg(polegadas),2) from laptop where empresa ilike '%Apple%'

 select trunc(avg(precoeuros),2) from laptop where tipo ilike '%Notebook%'
