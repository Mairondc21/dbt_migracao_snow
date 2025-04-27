-- criacao de tabelas
CREATE TABLE recursos_humanos.funcionarios(
	id_funcionario INTEGER PRIMARY KEY,
	nome VARCHAR(100),
	cargo VARCHAR(100),
	salario FLOAT,
	id_filial INTEGER
);

CREATE TABLE recursos_humanos.filiais(
	id_filial INTEGER PRIMARY KEY,
	nome_filial VARCHAR(200),
	cidade VARCHAR(200),
	estado VARCHAR(50)
);

CREATE TABLE clientes.clientes(
	id_cliente INTEGER PRIMARY KEY,
	nome VARCHAR(100),
	id_endereco INTEGER,
	id_profissao INTEGER,
	renda_mensal FLOAT
);

CREATE TABLE clientes.enderecos(
	id_endereco INTEGER PRIMARY KEY,
	rua VARCHAR(200),
	bairro VARCHAR(100),
	cidade VARCHAR(100),
	estado VARCHAR(50),
	cep VARCHAR(100)
);

CREATE TABLE clientes.profissoes(
	id_profissao INTEGER  PRIMARY KEY,
	nome_profissao VARCHAR(100),
	area_atuacao VARCHAR(100)
);

-- ADD FOREIGN KEY
ALTER TABLE recursos_humanos.funcionarios
ADD CONSTRAINT fk_id_filial
FOREIGN KEY (id_filial) REFERENCES recursos_humanos.filiais(id_filial);

ALTER TABLE clientes.clientes
ADD CONSTRAINT fk_id_endereco
FOREIGN KEY (id_endereco) REFERENCES clientes.enderecos(id_endereco);

ALTER TABLE clientes.clientes
ADD CONSTRAINT fk_id_profissao
FOREIGN KEY (id_profissao) REFERENCES clientes.profissoes(id_profissao);

-- INSERT NO SCHEMA recursos_humanos
-- Inserindo nas filiais
INSERT INTO recursos_humanos.FILIAIS (id_filial, nome_filial, cidade, estado)
VALUES 
(1, 'Loja Sudeste', 'Belo Horizonte', 'MG'),
(2, 'Loja Norte', 'São Paulo', 'SP'),
(3, 'Loja Sul', 'Curitiba', 'PR'),
(4, 'Loja Sudeste', 'Belo Horizonte', 'MG'),
(5, 'Loja Nordeste', 'Salvador', 'BA'),
(6, 'Loja Nordeste', 'Fortaleza', 'CE'),
(7, 'Loja Centro', 'Goiania', 'GO');


-- Inserindo nos funcionários
INSERT INTO recursos_humanos.FUNCIONARIOS (id_funcionario, nome, cargo, salario, id_filial)
VALUES
(1, 'Ana Souza', 'Gerente', 8500.00, 1),
(2, 'Carlos Pereira', 'Vendedor', 3200.00, 1),
(3, 'Fernanda Lima', 'Coordenador', 6200.00, 2),
(4, 'João Batista', 'Estoquista', 3100.00, 6),
(6, 'Matheus Campos', 'Vendedor', 3300.00, 5),
(7, 'Pereira Batista', 'Vendedor', 5200.00, 6),
(8, 'Batista Souza', 'Caixa', 2600.00, 4),
(9, 'Maria Figueiredo', 'Vendedor', 4000.00, 4),
(10, 'Fernanda Lima', 'Gerente', 10000.00, 2),
(11, 'Roberto Lopes', 'Coordenador', 5800.00, 5),
(12, 'Joaquim Costa', 'Coordenador', 6300.00, 7),
(13, 'Mauro Jose', 'Vendedor', 4300.00, 3),
(14, 'Henrique Costa', 'Coordenador', 6500.00, 3);

-- INSERT NO SCHEMA clientes
-- Inserindo nos endereços
INSERT INTO clientes.ENDERECOS (id_endereco, rua, bairro, cidade, estado, cep)
VALUES
(1, 'Rua das Acácias, 45', 'Centro', 'Belo Horizonte', 'MG', '30110-000'),
(2, 'Av. Paulista, 1000', 'Bela Vista', 'São Paulo', 'SP', '01310-100'),
(3, 'Rua XV de Novembro, 200', 'Centro', 'Curitiba', 'PR', '80020-310'),
(4, 'Rua Floriano Peixoto, 320', 'Centro', 'Campinas', 'SP', '13013-000'),
(5, 'Av. Getúlio Vargas, 450', 'Savassi', 'Belo Horizonte', 'MG', '30140-061');


-- Inserindo nas profissões
INSERT INTO clientes.PROFISSOES (id_profissao, nome_profissao, area_atuacao)
VALUES
(1, 'Médico', 'Saúde'),
(2, 'Engenheiro', 'Engenharia'),
(3, 'Professor', 'Educação'),
(4, 'Analista de Sistemas', 'Tecnologia'),
(5, 'Vendedor', 'Comércio'),
(6, 'Advogado', 'Direito'),
(7, 'Arquiteto', 'Arquitetura'),
(8, 'Designer Gráfico', 'Comunicação'),
(9, 'Consultor de Negócios', 'Consultoria'),
(10, 'Técnico de Enfermagem', 'Saúde');


-- Inserindo nos clientes
INSERT INTO clientes.CLIENTES (id_cliente, nome, id_endereco, id_profissao, renda_mensal)
VALUES
(1, 'Bruno Silva', 1, 1, 12000.00),
(2, 'Juliana Souza', 2, 4, 8000.00),
(3, 'Paulo Almeida', 3, 2, 10000.00),
(4, 'Marina Costa', 1, 3, 4000.00),
(5, 'Roberto Lima', 2, 5, 2500.00),
(6, 'Tatiane Ribeiro', 4, 6, 7000.00),
(7, 'Ricardo Gonçalves', 5, 7, 9500.00),
(8, 'Débora Martins', 2, 8, 4000.00),
(9, 'Marcelo Oliveira', 3, 9, 11000.00),
(10, 'Renata Figueiredo', 5, 10, 3500.00);

