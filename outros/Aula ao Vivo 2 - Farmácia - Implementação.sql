create database Empresa;
use Empresa;

create table Farmacia (
	CNPJ varchar(18) not null,
    nome varchar(50) not null,
    endereco varchar(100) not null,
    telefone varchar(15) not null,
    primary key (CNPJ)
);

create table Farmaceutico (
	CPF varchar(14) not null,
    nome varchar(50) not null,
    CNPJ varchar(18) not null,
    primary key (CPF),
    foreign key (CNPJ) references Farmacia (CNPJ)
);

create table Produto (
	codProduto int not null,
    descricao varchar(50) not null,
    quantidade int not null,
    valor float not null,
    CNPJ varchar(18) not null,
    primary key (codProduto),
    foreign key (CNPJ) references Farmacia (CNPJ)
);

insert into Farmacia values ('12.345.678/0001-01', 'FarMais', 'Avenida Sete de Setembro, 3050, Curitiba - PR', '(41) 99748-1545');
insert into Farmacia values ('23.456.789/0001-02', 'Pague Menos', 'Avenida Brasil, 1234, Brasília - DF', '(61) 99874-1485');
insert into Farmacia values ('34.567.890/0001-03', 'Mais Saúde', 'Avenida Buenos Aires, 250, São Luiz - MA', '(98) 99874-9462');
select * from Farmacia;

insert into Farmaceutico values ('123.456.789-01', 'Marta da Silva', '12.345.678/0001-01');
insert into Farmaceutico values ('234.567.890-02', 'Murilo Queiroz', '12.345.678/0001-01');
insert into Farmaceutico values ('345.678.901-03', 'Daiane de Lima Soares', '23.456.789/0001-02');
insert into Farmaceutico values ('456.789.012-04', 'Vicente de Jesus', '23.456.789/0001-02');
insert into Farmaceutico values ('567.890.123-05', 'Ana Paula Munhoz', '34.567.890/0001-03');
insert into Farmaceutico values ('678.901.234-06', 'Hélio Machado', '34.567.890/0001-03');
select * from Farmaceutico;

insert into Produto values (1, 'Xarope para tosse', 10, 22.89, '12.345.678/0001-01');
insert into Produto values (2, 'Sabonete antialérgico', 25, 10.49, '12.345.678/0001-01');
insert into Produto values (3, 'Creme para assadura', 14, 28.10, '12.345.678/0001-01');
insert into Produto values (4, 'Remédio para dor de cabeça', 50, 9.70, '23.456.789/0001-02');
insert into Produto values (5, 'Shampoo para cabelos secos', 21, 14.35, '23.456.789/0001-02');
insert into Produto values (6, 'Pomada cicatrizante', 18, 17.12, '23.456.789/0001-02');
insert into Produto values (7, 'Atadura', 9, 8.04, '34.567.890/0001-03');
insert into Produto values (8, 'Pasta de dente', 27, 7.59, '34.567.890/0001-03');
insert into Produto values (9, 'Escova de dente', 25, 16.45, '34.567.890/0001-03');
select * from Produto;

select count(codProduto) as 'Total de Produtos' from Produto;