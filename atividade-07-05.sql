create database alunoSenai;
use alunoSenai;

create table alunos(
    nome varchar(100) not null,
	idade int,
    curso varchar(100) not null,
    matricula int (30) not null,
    primary key (matricula)
);

insert into alunos (nome,idade,curso,matricula) values
	('JV', 16,'Desenvolvimento de Sistemas',321),
    ('Renan', 19,'Desenvolvimento de Sistemas',324),
    ('Ryan', 20,'Desenvolvimento de Sistemas',322),
    ('Portales', 17,'Desenvolvimento de Sistemas',325),
    ('Pele', 21,'Desenvolvimento de Sistemas',326),
    ('Alexia', 25,'MultiMídia',345);

-- 02
delete from alunos where matricula = 322;

-- 3
UPDATE alunos SET idade = 27 WHERE matricula = 326;

-- 4
COMMIT;

-- 5
ROLLBACK;

-- 6

select nome,idade from alunos;

-- 7
select * from alunos where idade > 20;

-- 8
select nome, curso from alunos;

-- 9
SELECT * FROM alunos ORDER BY nome ASC;

-- 10
SELECT curso, COUNT(*) AS total_alunos FROM alunos GROUP BY curso;