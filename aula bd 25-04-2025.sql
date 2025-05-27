#atividade 1: Update
create database hortifruti;

use hortifruti;

create table vendas(
id_venda bigint primary key auto_increment,
nome_cliente varchar(50),
item_pedido varchar(50),
qt bigint,
valor float
)

insert into vendas(id_venda, nome_cliente, item_pedido, qt, valor)
values
(1, 'Alice Oliveira', 'Tênis', 2, 160.50),
(2, 'Angela Carla', 'Calça', 3, 189.20),
(3, 'Vinicius Ribeiro', 'Meia', 3, 29.50),
(4, 'Ricardo Ferreira', 'Notebook', 1, 1989.20),
(5, 'Fabricio Carreiro', 'Celular', 1, 1650.20);

update vendas
set valor = 3600
where id_venda = 1;

select * from vendas


# Atividade 2 - Banco de Dados

CREATE DATABASE db_escola;
USE db_escola;


CREATE TABLE cursos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  duracao_meses INT
);

CREATE TABLE alunos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  idade INT,
  curso_id INT,
  FOREIGN KEY (curso_id) REFERENCES cursos(id)
);


INSERT INTO alunos (id, nome, idade, curso_id)
VALUES 
(1, 'João Silva', 20, 1),
(2, 'Maria Santos', 22, 2),
(3, 'Carlos Oliveira', 25, 1),
(4, 'Ana Pereira', 23, 3),
(5, 'Pedro Costa', 21, 2);


INSERT INTO cursos (id, nome, duracao_meses)
VALUES 
(1, 'Engenharia de Software', 48),
(2, 'Administração', 36),
(3, 'Arquitetura', 60),
(4, 'Marketing', 24),
(5, 'Direito', 48);

select * from cursos;



CREATE USER 'analista_dados'@'localhost' identified by '1234analista';
CREATE USER 'escola_admin'@'localhost' identified by '123admin';

grant select on db_escola.* to 'analista_dados'@'localhost';
grant select, update, delete on db_escola.* to 'escola_admin'@'localhost';

create user 'estag_select'@'localhost' identified by '123estag';
grant select on db_escola.* to 'estag_select'@'localhost';

revoke select on db_escola.* from 'escola_admin'@'localhost'