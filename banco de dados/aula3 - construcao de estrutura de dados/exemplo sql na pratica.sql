-- comando para mostrar os bancos de dados
show databases;
/*
comentário de várias linhas
*/
-- create database aula;
-- use aula;
-- select database();
create table exemplo (
	id int,
    nome varchar(100)
);
show tables;
insert into exemplo (id, nome) values (1, 'Ana');
select * from exemplo;