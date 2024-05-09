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

select nome, nascimento from cliente
union 
select nome, nascimento from funcionario;

select nome, nascimento, 'cliente' from cliente
union all
select nome, nascimento, 'funcionario' from funcionario
order by 1;

-- Distinct
select nome from cliente order by nome;
select distinct nome from cliente order by nome;

-- Distinct com mais colunas
select nome, email from cliente order by nome;
select distinct nome, email from cliente order by nome;

-- Inner join - equi-non
select nome, nome, sigla from cidade 
    inner join estado
    on cidade.estadoId = estado.id;

-- Usando where
select nome, nome, sigla from cidade, estado
    where cidade.estadoId = estado.id;

-- Left join inclusive
select nome, nome, sigla from cidade 
    left join estado
    on cidade.estadoId = estado.id;

-- Left join exclusive
select nome, nome, sigla from cidade 
    left join estado
    on cidade.estadoId = estado.id
    where estado.id is null;

-- Right join inclusive
select nome, nome, sigla from cidade 
    right join estado
    on cidade.estadoId = estado.id;

-- Right join exclusive
select nome, nome, sigla from cidade 
    right join estado
    on cidade.estadoId = estado.id
    where cidade.estadoId is null;

-- Full join (o MySQL não suporta o full join)
select nome, nome, sigla from cidade 
    full join estado
    on cidade.estadoId = estado.id;

-- Gerando o full join
select nome, nome, sigla from cidade 
    left join estado
    on cidade.estadoId = estado.id
    union
    select nome, nome, sigla from cidade 
        right join estado
        on cidade.estadoId = estado.id
    where cidade.estadoId is null;

-- Cross join
select nome, pergunta from pergunta
    cross join funcionario;

-- Self join com inner join
select funcionario.nome, gerente.nome as 'gerente' from funcionario 
    inner join funcionario as gerente
    on funcionario.gerente = gerente.matricula
    order by funcionario.nome;

-- Self join com left join
select funcionario.nome, gerente.nome from funcionario 
    left join funcionario as gerente
    on funcionario.gerente = gerente.matricula
    order by funcionario.nome;

-- Join com várias tabelas
select nome, nome, nome from funcionario
    inner join cidade 
    on funcionario.cidadeId = cidade.id
    inner join estado
    on cidade.estadoId = estado.id
    order by nome;

select nome, nome, sigla from cidade 
    full join estado
    on cidade.estadoId = estado.id
    where cidade.estadoId is null
    or estado.id is null;

select nome, salario, salario * 1.10 from funcionario;

select nome as 'Nome do funcionário', 
    salario as 'Salário atual',
    salario * 1.10 as 'Novo salário'
    from funcionario;

select nome as 'Nome do funcionário', nome as 'Nome da cidade' from funcionario f
    inner join cidade c
    on f.cidadeId = c.id;