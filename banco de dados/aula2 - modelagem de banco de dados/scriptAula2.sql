show databases;
create database aulaPratica;
use aulaPratica;

CREATE TABLE estado (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(100) NULL,
  sigla CHAR NULL,
  PRIMARY KEY(id)
);
