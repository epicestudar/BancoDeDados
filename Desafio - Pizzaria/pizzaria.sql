CREATE TABLE CLIENTES (
id_cliente SERIAL PRIMARY KEY NOT NULL,
telefone VARCHAR(15),
nome VARCHAR (100),
cpf VARCHAR (14)
)

CREATE TABLE FUNCIONARIOS (
id_funcionario SERIAL PRIMARY KEY NOT NULL,
telefone VARCHAR(15),
nome VARCHAR (100),
data_nascimento DATE
)

CREATE TABLE FORNECEDORES (
id_fornecedor SERIAL PRIMARY KEY NOT NULL,
telefone VARCHAR(15),
nome VARCHAR (100),
cpf VARCHAR (14)
)

CREATE TABLE PRODUTOS (
id_clientes SERIAL PRIMARY KEY NOT NULL,
especie VARCHAR(100),
preco DECIMAL (6),
quantidade VARCHAR (6)
)

CREATE INDEX idx_clientes_nome ON CLIENTES(nome);
CREATE INDEX idx_clientes_cpf ON CLIENTES(cpf);

CREATE INDEX idx_funcionarios_nome ON FUNCIONARIOS(nome);

CREATE INDEX idx_fornecedores_nome ON FORNECEDORES(nome);
CREATE INDEX idx_fornecedores_cpf ON FORNECEDORES(cpf);

CREATE INDEX idx_produtos_especie ON PRODUTOS(especie);