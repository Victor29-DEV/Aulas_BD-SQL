create database Empresa;
use Empresa;

create table Funcionarios(
id int primary key auto_increment,
nome varchar(100) not null,
data_nascimento date not null,
salario decimal (10,2) not null,
departamento_id int not null,
cargo_id int not null,
foreign key(departamento_id) references Departamentos(id),
foreign key (cargo_id) references Cargos(id)
);

create table Departamentos(
id int primary key auto_increment,
nome varchar(100) not null
);

CREATE TABLE Cargos ( 
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL, 
    nivel VARCHAR(50) NOT NULL 
    );

INSERT INTO Departamentos (nome) VALUES ('TI'), ('RH'), ('Financeiro'), ('Marketing'), ('Vendas');

INSERT INTO Cargos (nome, nivel) VALUES 
('Analista', 'Pleno'), 
('Gerente', 'Sênior'), 
('Assistente', 'Júnior'), 
('Coordenador', 'Sênior'), 
('Desenvolvedor', 'Pleno');

INSERT INTO Funcionarios (nome, data_nascimento, salario, departamento_id, cargo_id) VALUES 
('Ana Silva', '1985-06-15', 5500.00, 1, 5), 
('Carlos Santos', '1990-03-22', 4800.00, 2, 1), 
('Bruna Costa', '1987-12-10', 6000.00, 3, 2), 
('Daniel Oliveira', '1992-08-05', 5200.00, 1, 5), 
('Fernanda Lima', '1995-09-30', 4500.00, 2, 3), 
('Gustavo Souza', '1980-01-25', 7000.00, 3, 2), 
('Helena Martins', '1983-11-17', 5300.00, 1, 4), 
('Igor Ferreira', '1991-07-08', 4900.00, 2, 1), 
('Juliana Rocha', '1989-04-19', 5600.00, 3, 2), 
('Lucas Mendes', '1993-06-23', 5100.00, 1, 5);

select max(salario) as maior_salario from funcionarios; -- resposta da pergunta 1

select min(salario) as menor_salario from funcionarios; -- resposta da pergunta 2

select count(nome) as quantidade_funcionarios from funcionarios; -- resposta da pergunta 3

select nome, data_nascimento from funcionarios where year(data_nascimento) >= 1990; -- resposta da pergunta 4

select avg(salario) as media_salarial from funcionarios; -- resposta da 5

select substring(nome, 1,3) from funcionarios; -- resposta da 6

select funcionarios, count(nome) as nome from funcionarios join departamento on nome = departamento group by departamento;




SELECT * FROM funcionarios;

SELECT * FROM departamentos;

SELECT COUNT(f.id) as qtFunc, d.nome as Dep
FROM funcionarios f
	JOIN departamentos d ON f.departamento_id = d.id
	GROUP BY d.nome; -- resposta da 7
    
    select * from funcionarios;
    
    select * from cargos;
    
    select count(f.id) as qtFunc, c.nome as Cargos
    from funcionarios f
		join cargos c on f.cargo_id = c.id
        group by c.nome