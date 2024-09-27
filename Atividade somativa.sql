CREATE DATABASE cadastro;
use cadastro;

create table cliente(
	cliente_id int auto_increment primary key not null,
    nome varchar(50) not null,
    cpf int not null,
    rg int not null,
    telefone int not null,
    endereco varchar(100) not null
);

create table dependente(
	dep_id int auto_increment primary key not null,
    cliente_id int not null,
    nome varchar(50) not null,
    cpf int not null,
    foreign key (cliente_id) references cliente(cliente_id)
);
 select * from cliente;
  select * from dependente;
  
insert into cliente(nome, cpf, rg, telefone, endereco)
	values("Giovanna", 12345678, 1234567, 9999999, "rua X"),
		  ("Giulia", 12345678, 1234567, 9999999, "rua y"),
          ("Gabriel", 12345678, 1234567, 9999999, "rua Z"),
          ("Guilherme", 12345678, 1234567, 9999999, "rua A "),
          ("Marceline", 12345678, 1234567, 9999999, "rua B");
          
insert into dependente(cliente_id, nome, cpf)
	values(5,"Thiago", 12345678),
		  (2,"Guilherme", 12345678),
          (1,"Gabriel", 12345678),
          (1,"Jhony", 12345678),
          (1,"Giulia", 12345678),
          (1,"Gabriel", 12345678),
          (1,"Jhony", 12345678),
          (1,"Giulia", 12345678);
          
	update cliente
    set nome = "Tae"
    where cliente_id = 1;
    
    update cliente
    set nome = "Jk"
    where cliente_id = 2;
  
	update cliente
    set nome = "jm"
    where cliente_id = 4;
    
    update cliente
    set endereco = "Rua I"
    where cliente_id = 1;
    
    update cliente
     set endereco = "Rua II"
    where cliente_id = 2;
  
	update cliente
     set endereco = "Rua III"
    where cliente_id = 4;
    
     delete from dependente
	   where cliente_id = 1;
       
       delete from dependente
	   where cliente_id = 2;
       
       delete from dependente
	   where cliente_id = 3;
       
       select nome, endereco from cliente;