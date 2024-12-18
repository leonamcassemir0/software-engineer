show databases;
create database aulaPratica;
use aulaPratica;

create database delivery;
use delivery;
CREATE TABLE cidade (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  estado_id INTEGER UNSIGNED NOT NULL,
  descricao VARCHAR(100) NULL,
  PRIMARY KEY(id),
  INDEX cidade_FKIndex1(estado_id)
);

CREATE TABLE cliente (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  usuario_id INTEGER UNSIGNED NOT NULL,
  cidade_id INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(100) NULL,
  dataNascimento DATE NULL,
  genero CHAR NULL,
  telefone VARCHAR(100) NULL,
  PRIMARY KEY(id),
  INDEX cliente_FKIndex1(cidade_id),
  INDEX cliente_FKIndex2(usuario_id)
);

CREATE TABLE endereco (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cliente_id INTEGER UNSIGNED NOT NULL,
  rua VARCHAR(100) NULL,
  numeroImovel VARCHAR(10) NULL,
  complemento VARCHAR(30) NULL,
  bairro VARCHAR(50) NULL,
  cep INTEGER UNSIGNED NULL,
  pontoReferencia VARCHAR(100) NULL,
  PRIMARY KEY(id),
  INDEX endereco_FKIndex2(cliente_id)
);

CREATE TABLE entregador (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cidade_id INTEGER UNSIGNED NOT NULL,
  cnh INTEGER UNSIGNED NULL,
  nome VARCHAR(100) NULL,
  endereco VARCHAR(100) NULL,
  telefone VARCHAR(100) NULL,
  PRIMARY KEY(id),
  INDEX entregador_FKIndex1(cidade_id)
);

CREATE TABLE estado (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(100) NULL,
  sigla CHAR NULL,
  PRIMARY KEY(id)
);

CREATE TABLE funcionario (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  usuario_id INTEGER UNSIGNED NOT NULL,
  restaurante_id INTEGER UNSIGNED NOT NULL,
  cidade_id INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(100) NULL,
  email VARCHAR(100) NULL,
  senha VARCHAR(100) NULL,
  endereco VARCHAR(100) NULL,
  telefone VARCHAR(100) NULL,
  dataAdmissao DATE NULL,
  dataNascimento DATE NULL,
  PRIMARY KEY(id),
  INDEX funcionario_FKIndex1(cidade_id),
  INDEX funcionario_FKIndex2(restaurante_id),
  INDEX funcionario_FKIndex3(usuario_id)
);

CREATE TABLE pedido (
  endereco_id INTEGER UNSIGNED NOT NULL,
  statusPedido_id INTEGER UNSIGNED NOT NULL,
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cliente_id INTEGER UNSIGNED NOT NULL,
  entregador_id INTEGER UNSIGNED NOT NULL,
  restaurante_id INTEGER UNSIGNED NOT NULL,
  dataPedido DATE NULL,
  totalPedido DECIMAL NULL,
  INDEX pedido_FKIndex1(restaurante_id),
  INDEX pedido_FKIndex2(entregador_id),
  INDEX pedido_FKIndex3(cliente_id),
  INDEX pedido_FKIndex4(statusPedido_id),
  INDEX pedido_FKIndex5(endereco_id)
);

CREATE TABLE pedidoProduto (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  produto_id INTEGER UNSIGNED NOT NULL,
  quantidadeProduto INTEGER UNSIGNED NULL,
  valorUnitario DECIMAL NULL,
  desconto DECIMAL NULL,
  PRIMARY KEY(id),
  INDEX pedidoProduto_FKIndex2(produto_id)
);

CREATE TABLE produto (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tipoProduto_id INTEGER UNSIGNED NOT NULL,
  descricao VARCHAR(100) NULL,
  valorUnitario DECIMAL NULL,
  estoque INTEGER UNSIGNED NULL,
  tipo CHAR NULL,
  PRIMARY KEY(id),
  INDEX produto_FKIndex1(tipoProduto_id)
);

CREATE TABLE restaurante (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cidade_id INTEGER UNSIGNED NOT NULL,
  razaoSocial VARCHAR(100) NULL,
  nomeFantasia VARCHAR(100) NULL,
  endereco VARCHAR(100) NULL,
  telefone VARCHAR(100) NULL,
  PRIMARY KEY(id),
  INDEX restaurante_FKIndex1(cidade_id)
);

CREATE TABLE statusPedido (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(30) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE tipoProduto (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(50) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE usuario (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  email VARCHAR(100) NULL,
  senha VARCHAR(20) NULL,
  PRIMARY KEY(id)
);


