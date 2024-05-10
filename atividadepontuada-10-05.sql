create database lojavirtual;
use lojavirtual;

create table produtos (
	id int not null auto_increment,
    nome varchar(255),
    descricao text,	
    preco decimal (10,2),
    categoria varchar (50),
    primary key (id)
);

-- 3
-- Create -> Utilizado para criar uma tabela e um componente na tabela;
-- Alter -> Utilizado para alterar um tipo de indice de uma coluna em uma tabela;
-- Drop -> Utilizado para excluir uma tabela ou um componente;

-- 4 TIPOS DE DADOS BÁSICOS DO MYSQL
-- int -> Armazena valores inteiros;
-- float -> Armazena valores decimais;
-- decimal -> Armazena valores decimais grandes;
-- varchar -> Armazena strings;
-- text -> Armazena Strings Longas;
-- Date -> Armazena datas;

-- 5
-- Chave Primaria Simples -> Um único campo assume a responsabilidade de identificar cada registro;
-- Chave Primaria Composta -> Dois ou mais campos se unem para formar a chave primária;
-- Chave Primaria Automatica -> O banco de dados gera automaticamente um valor único para cada registro, como um número sequencial;

-- 6
insert into produtos (nome,descricao,preco,categoria) values
 ('Mouse Gamer','Equipamento utilizado para facilitar o manuseio no computador', 499.99, 'Tecnologia'),
 ('Teclado','Equipamento utilizado para digitar algo no computador', 199.99, 'Tecnologia'),
 ('Papel de Parede','Utilizado para Decoração de uma casa', 59.99, 'Decoração'),
 ('Vassoura','Equipamento utilizado para limpeza de uma casa', 29.99, 'Limpeza'),
 ('Mousepad Gamer','apoio que parece uma almofada e que deve ficar embaixo do seu mouse pra fazer ele deslizar melhor', 99.99, 'Tecnologia');
 
 -- 7
 select * from produtos;
 
 -- 8
select * from produtos where categoria = 'Tecnologia';

-- 9
select * from produtos order by nome;

-- 10
select * from produtos order by preco desc limit 3;

-- 11 
update produtos set preco = 59.99 where id = 2;

-- 12
delete from produtos where id = 4;

-- 13
-- Update -> Permite modificar valores específicos em registros de uma tabela.
-- Delete -> Remove registros permanentemente de uma tabela. 

-- 14
-- Where -> Utiliza-se para filtrar as linhas que deseja atualizar ou deletar

-- 15
-- select * from clientes inner join pedidos on clientes.id = pedidos.cliente_id;

-- 16
select avg (preco) as preco_medio from produtos;

-- 17
select count(*) from produtos;

-- 18
select * from produtos order by preco desc limit 1;
select * from produtos order by preco asc limit 1;

-- 19
select categoria, avg(preco) as preco_medio from produtos group by categoria;
select categoria, sum(preco) as preco_total from produtos group by categoria;
select categoria, max(preco) as preco_maximo from produtos group by categoria;

-- 20
select nome, preco from produtos where preco > (select avg (preco) from produtos);
