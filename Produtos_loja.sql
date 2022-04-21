create database db_produtos;
use db_produtos;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
valor float not null,
quantidade int not null,
marca varchar(255) not null,
importado bool not null,
descricao varchar(255) not null,
primary key(id)
);

insert into tb_produtos (nome, valor, quantidade, marca, importado, descricao) values ('Georgie', 1012.56, 40, 'Ozu', true, 'Tubrcloma brain-histo dx');
insert into tb_produtos (nome, valor, quantidade, marca, importado, descricao) values ('Rafi', 321.44, 65, 'Tazz', true, 'Abnormal findings NEC');
insert into tb_produtos (nome, valor, quantidade, marca, importado, descricao) values ('Antin', 1277.01, 75, 'Einti', true, 'Blood donor NEC');
insert into tb_produtos (nome, valor, quantidade, marca, importado, descricao) values ('Eleonore', 744.3, 99, 'Realmix', false, 'Blister hand-infected');
insert into tb_produtos (nome, valor, quantidade, marca, importado, descricao) values ('Dunstan', 565.16, 33, 'Bluezoom', false, 'Dental caries-root surf');
insert into tb_produtos (nome, valor, quantidade, marca, importado, descricao) values ('Julie', 299.61, 9, 'Eire', false, 'Amput leg, unil NOS-comp');
insert into tb_produtos (nome, valor, quantidade, marca, importado, descricao) values ('Stormy', 1426.48, 96, 'Yotz', true, 'Pulmonary tularemia');
insert into tb_produtos (nome, valor, quantidade, marca, importado, descricao) values ('Correy', 1304.09, 50, 'Shufflester', false, 'Oth VD chlm trch lowr gu');

select * from tb_produtos;
select * from tb_produtos where valor < 500;
select * from tb_produtos where valor > 500;

alter table tb_produtos
change valor preco float not null;

update tb_produtos set importado = true where id = 5;
