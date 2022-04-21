create database db_servico_rh;
use db_servico_rh;

create table tb_user(
id bigint auto_increment,
nome varchar(255) not null,
idade tinyint not null,
salario float not null,
primary key(id)
);

alter table tb_user
add descricao varchar(255) not null;

alter table tb_user
change descricao situacao varchar(255);

select * from tb_user;
select * from tb_user where salario > 2000;
select * from tb_user where salario < 2000;

insert into tb_user (nome, idade, salario, situacao) values ("Thamiris", 22, 3874.23, "ativo");
insert into tb_user (nome, idade, salario, situacao) values ("Vitor", 19, 1952.91, "inativo");
insert into tb_user (nome, idade, salario, situacao) values ("Dayana", 24, 4186.60, "ativo");
insert into tb_user (nome, idade, salario, situacao) values ("Fernando", 32, 1686.60, "inativo");
insert into tb_user (nome, idade, salario, situacao) values ("Marilene", 27, 2415.44, "ativo");


update tb_user set situacao = "ativo" where id = 2;
update tb_user set situacao = "inativo" where id = 5;

delete from tb_user where situacao = "inativo";
