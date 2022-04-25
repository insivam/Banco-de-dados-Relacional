/* Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online.
 * O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
 * 
 * Boas Práticas:
 * 
 * Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
 * Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
 * Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
 * Insira 5 registros na tabela tb_classes.
 * Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
 * Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
 * Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
 * Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
 * Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
 * Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes,
 * onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
 * Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
 * 
 *  
 */



CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes
(
    id BIGINT
    AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR
    (255) NOT NULL,
    description VARCHAR
    (255) NOT NULL
);

    CREATE TABLE tb_personagens (
    id_personagem BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR
    (255) NOT NULL,
    hp INTEGER NOT NULL,
    mp INTEGER NOT NULL,
    atk INTEGER NOT NULL,
    def INTEGER NOT NULL,
    id_classe INTEGER NOT NULL,
    FOREIGN KEY
    (id_classe) REFERENCES tb_classes
    (id)
);


    INSERT INTO tb_classes
        (name, description)
    VALUES
        ('Mago', 'Mago');
    INSERT INTO tb_classes
        (name, description)
    VALUES
        ('Arqueiro', 'Arqueiro');
    INSERT INTO tb_classes
        (name, description)
    VALUES
        ('Guerreiro', 'Guerreiro');
    INSERT INTO tb_classes
        (name, description)
    VALUES
        ('Ladino', 'Ladino');
    INSERT INTO tb_classes
        (name, description)
    VALUES
        ('Druida', 'Druida');


    INSERT into tb_personagens
        (name, hp, mp, atk, def, id_class)
    values
        ('Kimimaro', 67, 10, 22, 82, 2);
    INSERT into tb_personagens
        (name, hp, mp, atk, def, id_class)
    values
        ('Luna', 49, 41, 8, 33, 2);
    INSERT into tb_personagens
        (name, hp, mp, atk, def, id_class)
    values
        ('Sasuke', 89, 22, 100, 36, 2);
    INSERT into tb_personagens
        (name, hp, mp, atk, def, id_class)
    values
        ('Itachi', 33, 68, 59, 33, 1);
    INSERT into tb_personagens
        (name, hp, mp, atk, def, id_class)
    values
        ('Naruto', 42, 3, 5, 10, 3);
    INSERT into tb_personagens
        (name, hp, mp, atk, def, id_class)
    values
        ('Sasori', 99, 64, 100, 14, 5);
    INSERT into tb_personagens
        (name, hp, mp, atk, def, id_class)
    values
        ('Kakashi', 61, 37, 7, 97, 2);
    INSERT into tb_personagens
        (name, hp, mp, atk, def, id_class)
    values
        ('Sakura', 61, 98, 67, 33, 2);



    SELECT *
    FROM tb_personagens
    WHERE atk > 2000;
    SELECT *
    FROM tb_personagens
    WHERE atk BETWEEN 1000 AND 2000;
    SELECT *
    FROM tb_personagens
    WHERE name LIKE '%C%';
    SELECT *
    FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_class = tb_classes.id_class;
    SELECT *
    FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_class = tb_classes.id_class
    WHERE tb_classes.name = 'Arqueiro';
