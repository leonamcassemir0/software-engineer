create table cidade2 (
	id int primary key auto_increment,
    nome varchar(120) not null,
    cepgeral int unsigned zerofill
);
alter table cidade2 add ddd char(5);
/* add, modify, change, drop */
describe cidade2;
alter table cidade2 change ddd dddd char(5);
alter table cidade2 modify dddd char(3);
insert into cidade2 (nome, cepgeral, dddd) values ('Salvador', 76599, 045);
select * from cidade2;
insert into cidade2 (nome, cepgeral, dddd) values ('Rio de Janeiro', 75599, 999);
insert into cidade2 (nome, cepgeral, dddd) values ('Belo Horizonte', 43564, 555);