show databases;

-- Criacao do banco de dados e tabela
create database aula;
use aula;
select database();
show tables;
create table produto (
	descricao varchar(100),
    preco decimal(10, 2)
);
describe produto;

-- Inserindo valores na tabela e ordenando
insert into produto (descricao, preco) values ('Smartphone XPTO G5', 1500.60);
insert into produto (descricao, preco) values ('Notebook i7 4g ram', 3500.00);
select * from produto;
select * from produto order by descricao asc;

-- Excluindo tabela e banco de dados
drop table produto;
drop database aula;

-- Criando novo banco de dados
create database if not exists aula;
use aula;

-- Criando a tabela e inserindo dados nela
create table aluno (
	id int,
    nome varchar(100) not null,
    genero char(1),
    nascimento date,
    estadoCivil char(1) check (estadoCivil in ('C', 'S', 'V', 'O')),
    salario decimal(10, 2) unsigned default 0,
    email varchar(120) unique
);
insert into aluno values (1, 'Helena Magalhães', 'F', '2000-01-01', 'C', 12500.99, 'helena.magalhaes@email.com'),
                         (2, 'Nicolas Oliveira', 'M', '2002-12-10', 'S', 8500, 'nicolas.oliveira@email.com'),
                         (3, 'Ana Rosa Silva', 'F', '1996-12-31', 'S', 8500, 'ana.rosa@email.com'),
                         (4, 'Tales Heitor Souza', 'M', '2000-10-01', 'O', 7689, 'tales.heitor@email.com'),
                         (5, 'Bia Meireles', 'F', '2002-03-14', 'O', 9450, 'bia.meireles@email.com'),
                         (6, 'Pedro Filho', 'M', null, 'V', 6800, 'pedro.filho@email.com'),
                         (7, 'Helena Soares', 'F', '1994-08-10', 'S', 8600, 'helena.soares@email.com');
describe aluno;

-- Realizando consulta e organizando a tabela
select * from aluno where genero = 'F';
select * from aluno where genero = 'F' order by nascimento;
select * from aluno where nascimento = null order by nascimento;
select * from aluno where nascimento is null order by nascimento;
select * from aluno where salario is not null order by nascimento;
-- Restrição de unique
insert into aluno values (8, 'Helena Magalhães Bandeira', 'F', '1995-10-01', 'S', 12400, 'helena.magalhaes@email.com');

-- Not null
insert into aluno values (8, null, 'F', '1995-10-01', 'S', 12400, 'testes@email.com');
-- ou
insert into aluno (id, genero, nascimento, estadoCivil, salario, email) values (10, 'M', '2000-12-10', 'C', 9000, 'nicolas@email.com');

-- Check
insert into aluno values (8, 'Wilquison', 'M', '1995-10-01', 'X', 12400, 'testes@email.com');

-- Default
insert into aluno (id, nome, genero, nascimento, estadoCivil, email) values (8, 'Wilquison', 'M', '1995-10-01', 'C', 'testes@email.com');

-- Unsigned
insert into aluno (id, nome, genero, nascimento, estadoCivil, salario, email) values (8, 'Wilquison', 'M', '1995-10-01', 'C', -9000, 'testes@email.com');

-- Alter: Add, change, modify, rename, drop
-- Adiciona uma nova coluna
alter table aluno add telefone char(10);
alter table aluno add ddd int(03) zerofill after telefone;

describe aluno;

-- Modifica o nome de uma coluna
alter table aluno change telefone celular char(10);

describe aluno;

select * from aluno;

-- Modifica o tamanho de uma coluna
alter table aluno modify celular char(12);

-- Elimina uma coluna de uma tabela
alter table aluno drop celular;

describe aluno;

-- Altera o nome de uma tabela
alter table aluno rename to alunos;

show tables;

-- Altera o nome de uma tabela
alter table alunos rename to aluno;
 
show tables;

-- Adiciona as restrições: Chave primária
alter table aluno add constraint pkAluno primary key(id);
 
-- Remove uma restrição
alter table aluno drop primary key;
-- drop constraint pkaluno;

alter table aluno modify column id int not null primary key auto_increment;
 
insert into aluno (nome, genero, nascimento, estadoCivil, salario, email, ddd) values ('Zanana', 'F', '1995-10-01', 'C', 9000, 'zanana@email.com', 10);

-- Mostra o zerofill
select * from aluno;

-- Define um novo valor para o auto incremento
alter table aluno auto_increment = 100;

-- Exclui uma tabela
drop table aluno;