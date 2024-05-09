show databases;
use aulapratica4;

select * from estado;
select * from cidade;
select * from cliente;
select * from funcionario;
select * from pergunta;

-- Atualizar dados
update funcionario
set cidadeID = (select id from cidade where nome = 'Recife')
where matricula = 2;
update funcionario
set nome = 'Joao da Silva',
departamento = 3
where matricula = 2;
select * from cidade;
insert into cidade(id, nome, estadoID) values (7, 'Londrina', 1);

-- Deletar dados
select * from cliente;
delete from cliente where id = 5;
delete from cliente where nome = 'Helena Magalhaes';
delete from funcionario
where departamento = 1
and genero = 'M';
delete from cliente where cidadeId in (select id from cidade where nome = 'Curitiba');
delete from cliente;
truncate table cliente;

-- Filtrar dados
select * from cliente where genero = 'F';
select * from funcionario
where salario >= 5000
and salario <= 8000;
select * from cidade where nome is not null;
-- like
select nome from cliente where nome like '%Silva%';
select nome from cliente where nome like '%Silva';
select nome from cliente where nome like 'Silva%';
-- in
select nome, cidadeId from cliente where cidadeId in (1, 2, 4);
select * from funcionario where cidadeId = 1 or cidadeId = 2 or cidadeId = 4;
-- between
select * from funcionario where cidadeId between 1 and 4;
select * from funcionario where cidadeId not between 1 and 4;
select * from funcionario where cidadeId >= 1 and cidadeId <= 4;

select * from funcionario order by nome desc, salario asc; 
select * from funcionario order by 3 asc;

-- Limit
select * from funcionario LIMIT 3;
select * from funcionario LIMIT 3, 2;

-- Comando case
select nome,
    case
        when genero = 'M' then 'Masculino'
        when genero = 'F' then 'Feminino'
        else 'Outros'
    end as 'Gênero'
from funcionario;