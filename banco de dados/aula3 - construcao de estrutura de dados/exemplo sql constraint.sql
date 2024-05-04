create table aluno (
	id int primary key,
    nome varchar(130) not null,
    genero char(1), -- genero sera F, M
    estadoCivil char(1) check (estadoCivil in ('S', 'C', 'V')),
    renda decimal(10,2) default 0
);
insert aluno (id, nome, genero, estadoCivil)
values (1, 'Maria', 'M', 'S');
select * from aluno;
describe aluno;