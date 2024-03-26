CREATE DATABASE ex3

create table cliente (
    codigo int not null,
    nome VARCHAR(20) not null,
    endereco VARCHAR(20) not null,
    cep char(8) not null,
    uf CHAR(2) not null,
    cnpj char(20) not null,
    ie char(20) not null,
    PRIMARY KEY(codigo)
);

create TABLE vendedor (
    codigo int not null,
    nome VARCHAR(20) not null,
    salario decimal(7, 2) not null,
    fsalarial char(1) not null,
    PRIMARY KEY(codigo)
);

create table cadfun (
    codfun int not null primary key,
    nome VARCHAR(40) not null,
    depto CHAR(2),
    funcao char(20),
    salario numeric (10, 2)
)

INSERT INTO cliente
VALUEs (1, 'Rodrigo', 'Rua XXX', '187283-9', 'SP', '3289239233', '18129182')

INSERT INTO cliente
VALUEs (2, 'Bruno', 'Rua XXX', '222222-9', 'RJ', '323432454', '232342345')

INSERT INTO cliente
VALUEs (3, 'Diogo', 'Rua XXX', '333333-9', 'MG', '656767667', '455676767')

INSERT INTO cliente
VALUEs (4, 'Gabriel', 'Rua XXX', '444444-9', 'RS', '76768778', '878787678')

INSERT INTO cliente
VALUEs (5, 'Eduardo', 'Rua XXX', '55555-9', 'PA', '6767767678', '343454554')

INSERT INTO vendedor
VALUEs (1, 'Gabriela', 1900.00, 1), (2, 'Bruna', 4000.00, 2), (3, 'Julia', 3222.00, 3), (4, 'Juliana', 5490.00, 4), (5, 'Nabia', 7894.00, 5)

INSERT INTO cadfun
VALUEs (1, 'Roberto', 'TI', 'Programador', 9000.00), (2, 'Leandro', 'RH', 'Recepcionista', 3456.00), (3, 'Henrique', 'PA', 'Medico', 2343.00), (4, 'Guilherme', 'TI', 'Engenheiro', 3827.00), (5, 'Juninho', 'RH', 'Financeiro', 2372.00)

SELECT * FROM cliente;
SELECT * FROM vendedor;
SELECT * FROM cadfun;

UPDATE cadfun
set salario = salario + 250.00

SELECT codfun, nome, salario from cadfun;

SELECT funcao from cadfun WHERE funcao = 'Analista'

SELECT nome, salario from cadfun where salario > 1700;

SELECT nome, salario from cadfun where salario < 1700;

SELECT nome, salario from cadfun where salario = 1700;

SELECT funcao from cadfun WHERE funcao = 'Analista' AND funcao = 'Programador'

SELECT funcao, salario from cadfun WHERE funcao = 'Analista' OR funcao = 'Programador' AND salario > 1200

SELECT funcao from cadfun WHERE funcao != 'Analista' AND funcao != 'Programador'

ALTER TABLE cadfun
ADD filhos int;

UPDATE cadfun
SET filhos = 3;

select filhos from cadfun where filhos >= 2 and filhos <=4;

select filhos, salario from cadfun where filhos >= 2 and filhos <=4 and salario <2000;

select filhos from cadfun where filhos < 2 and filhos > 3;

SELECT * FROM cadfun
WHERE filhos IN (2, 3);
