use aula;
create table cidade (
	id int primary key,
    nome varchar(100),
    sigla char(3) unique
);
insert into cidade (id, nome, sigla) values (1, 'Curitiba', 'CWB');
select * from cidade;
insert into cidade (id, nome, sigla) values (2, 'Natal', 'NTA');
insert into cidade (id, nome, sigla) values (3, 'Belem', 'BLM');
create table cliente (
	id int primary key,
    nome varchar(100),
    idcidade int,
    constraint fkclienteCidade foreign key (idcidade) references cidade(id)
);

insert into cliente values (1, 'Joao', 1);
insert into cliente values (2, 'Jose', 3);
select * from cliente;