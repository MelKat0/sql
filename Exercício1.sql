CREATE DATABASE gersalarios;
use gersalarios;

CREATE TABLE cargo(
	cargo_id int auto_increment primary key not null,
    nome varchar(100) not null,
    salario decimal(10,2) not null,
    descricao varchar(100)
);

CREATE TABLE funcionario(
	id int auto_increment primary key not null,
    nome varchar(50) not null,
    sobrenome varchar(100) not null,
    email varchar(50) not null,
    cargo_id int not null,
    data_contratacao date not null,
    foreign key (cargo_id) references cargo(cargo_id)
);

#---------------------------------------------------------------------------------#

INSERT into cargo (nome, salario, descricao)
	values("DEV front end", 11000.00, "Trabalha na interface"),
		("DEV back end", 15000.00, "Trabalha nos bastidores"),
        ("DEV Full Stack", 20000.00, "Trabalha em ambos");

INSERT into funcionario (nome,sobrenome, email, cargo_id, data_contratacao)
	values("João", "Silva", "joao@gmail.com", 3, "2024-09-25"),
		("Joana", "Silva", "joana@gmail.com", 3, "2024-09-25"),
        ("Lucas", "Eduardo", "lucas@gmail.com", 1, "2024-09-25"),
        ("Diogo", "Machado", "diogo@gmail.com", 2, "2024-09-25"),
        ("Lya", "Silva", "lya@gmail.com", 2, "2024-09-25");
        
#--------------------------------------------------------------------------------#

SELECT * FROM cargo;
SELECT * FROM funcionario;
SELECT * FROM cargo
where salario>15000.00;
SELECT * FROM cargo
where salario >= 11000.00 AND salario <= 15000.00;
SELECT * FROM funcionario
where id = 1;
SELECT * FROM funcionario
where data_contratacao = "2024-09-25";
UPDATE funcionario
set data_contratacao = "2024-09-24"
where id = 2;
DELETE FROM funcionario
where id = 2;
