CREATE TABLE cadfun (
	codfun int not null primary key,
	nome varchar (40) not null,
	depto char (2),
	funcao char(20),
	salario numeric (10, 2)
);

CREATE table produto (
	descricao varchar (20),
	valor_un int not null
);

CREATE TABLE vendedor (
	nome varchar (20) not null,
	salario int not null
);

ALTER TABLE produto
ADD COLUMN codigo int not null

ALTER TABLE vendedor
ADD COLUMN fsalarial int

INSERT INTO produto VALUES ('aaaaa', 1, 1)
INSERT INTO produto VALUES ('bbbbbbb', 2, 2)
INSERT INTO produto VALUES ('ccccc', 3, 3)

INSERT INTO cadfun VALUES(1, 'Ronaldo', 'TI', 'Assistente', 2000)
INSERT INTO cadfun VALUES(2, 'Bruno', 'TI', 'Programador', 5000)
INSERT INTO cadfun VALUES(4, 'Bruna', 'TI', 'Programadora', 5000)
INSERT INTO cadfun VALUES(3, 'Eduardo', 'TI', 'Engenheiro', 9000)
INSERT INTO cadfun VALUES(5, 'Eduarda', 'TI', 'Engenheira', 5000)

INSERT INTO vendedor VALUES ('Ronaldo', 2700)
INSERT INTO vendedor VALUES ('Bruno', 5500)

SELECT codfun, nome
FROM cadfun;

SELECT nome, salario
FROM cadfun;

SELECT descricao, valor_un
FROM produto;

SELECT descricao, valor_un FROM produto WHERE codigo = 1

SELECT descricao, valor_un FROM produto WHERE codigo > 2

SELECT nome, salario FROM vendedor WHERE salario > 3500

SELECT nome, salario FROM vendedor WHERE salario > 2000

SELECT funcao FROM cadfun
SELECT DISTINCT funcao FROM cadfun

SELECT salario from cadfun 
SELECT DISTINCT salario from cadfun

SELECT funcao FROM cadfun
ORDER BY funcao DESC;

SELECT funcao from cadfun
ORDER BY funcao;

SELECT nome, salario from vendedor
ORDER BY nome, salario;

SELECT nome, salario from vendedor
ORDER BY nome, salario DESC;

SELECT salario from vendedor
ORDER BY salario DESC;

SELECT nome, salario, fsalarial from vendedor
ORDER BY nome, salario, fsalarial DESC

select fsalarial, nome from vendedor
order by fsalarial, nome 

update cadfun
SET salario = 5570
WHERE funcao = 'Programador'

update cadfun
SET salario = 5570
WHERE funcao = 'Programadora'

update vendedor
SET fsalarial = '2'
where fsalarial = '1'

update vendedor
set salario = 4200
where salario > 3500

update vendedor
set fsalarial = 3
where salario > 4000


DELETE FROM cadfun;
DELETE FROM produto;
DELETE FROM vendedor;

DROP TABLE cadfun;
DROP TABLE produto;
DROP TABLE vendedor;