create database db_escola;
use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
genero varchar(255) not null, 
presenca boolean not null,
primary key(id)
);

alter table tb_estudantes
add nota float not null;

insert into tb_estudantes (nome, idade, genero, presenca, nota) values ('Paola Keatch', 14, 'Polygender', true, 8.8);
insert into tb_estudantes (nome, idade, genero, presenca, nota) values ('Adah Beggio', 15, 'Female', true, 9.28);
insert into tb_estudantes (nome, idade, genero, presenca, nota) values ('Josy Callen', 17, 'Female', false, 8.13);
insert into tb_estudantes (nome, idade, genero, presenca, nota) values ('Rossie Radke', 6, 'Non-binary', true, 6.55);
insert into tb_estudantes (nome, idade, genero, presenca, nota) values ('Lidia Pietruszewicz', 6, 'Genderqueer', true, 7.95);
insert into tb_estudantes (nome, idade, genero, presenca, nota) values ('Pattie Rouch', 15, 'Male', true, 7.92);
insert into tb_estudantes (nome, idade, genero, presenca, nota) values ('Johann Covendon', 10, 'Male', true, 0.77);
insert into tb_estudantes (nome, idade, genero, presenca, nota) values ('Vere Nabbs', 7, 'Female', false, 4.07);

select * from tb_estudantes;
select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set idade = idade + 1 where id = 4;
