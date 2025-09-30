-- ==============================
-- EXERCICIO 1 e 2: Criar database e tabela Funcionarios com DataNascimento
-- ==============================
CREATE DATABASE IF NOT EXISTS exercicio1;
USE exercicio1;

CREATE TABLE Funcionarios (
    codFunc INT NOT NULL AUTO_INCREMENT,
    nomeFunc VARCHAR(50) NOT NULL,
    Apelido VARCHAR(50),
    salario DECIMAL(10,2) NOT NULL,
    dataNascimento DATE NOT NULL,
    IDDepartamento INT,
    IDEndereco INT,
    PRIMARY KEY (codFunc)
);

-- ==============================
-- EXERCICIO 3: Criar tabela Departamentos
-- ==============================
CREATE TABLE Departamentos (
    codDep INT NOT NULL AUTO_INCREMENT,
    nomeDep VARCHAR(50) NOT NULL,
    PRIMARY KEY (codDep)
);

-- Adicionando chave estrangeira Funcionarios -> Departamentos
ALTER TABLE Funcionarios
ADD CONSTRAINT fk_departamento
FOREIGN KEY (IDDepartamento) REFERENCES Departamentos(codDep);

-- ==============================
-- EXERCICIO 5: Criar tabela Projetos
-- ==============================
CREATE TABLE Projetos (
    codProj INT NOT NULL AUTO_INCREMENT,
    nomeProj VARCHAR(50) NOT NULL,
    IDCliente INT,
    PRIMARY KEY (codProj)
);

-- ==============================
-- EXERCICIO 6: Criar tabela Alocacoes
-- ==============================
CREATE TABLE Alocacoes (
    codAloc INT NOT NULL AUTO_INCREMENT,
    IDFuncionario INT NOT NULL,
    IDProjeto INT NOT NULL,
    PRIMARY KEY (codAloc),
    FOREIGN KEY (IDFuncionario) REFERENCES Funcionarios(codFunc),
    FOREIGN KEY (IDProjeto) REFERENCES Projetos(codProj)
);

-- ==============================
-- EXERCICIO 8 e 12: Criar tabela Clientes e renomear coluna
-- ==============================
CREATE TABLE Clientes (
    codCliente INT NOT NULL AUTO_INCREMENT,
    NomeEmpresa VARCHAR(50) NOT NULL,
    PRIMARY KEY (codCliente)
);

-- ==============================
-- EXERCICIO 9: Adicionar coluna IDCliente à tabela Projetos
-- ==============================
ALTER TABLE Projetos
ADD CONSTRAINT fk_cliente_projeto
FOREIGN KEY (IDCliente) REFERENCES Clientes(codCliente);

-- ==============================
-- EXERCICIO 10: Criar tabela Enderecos
-- ==============================
CREATE TABLE Enderecos (
    codEnd INT NOT NULL AUTO_INCREMENT,
    Rua VARCHAR(100) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    PRIMARY KEY (codEnd)
);

-- Adicionando chave estrangeira Funcionarios -> Enderecos
ALTER TABLE Funcionarios
ADD CONSTRAINT fk_endereco_funcionario
FOREIGN KEY (IDEndereco) REFERENCES Enderecos(codEnd);

-- ==============================
-- EXERCICIO 13 e 14: Criar tabela Pedidos
-- ==============================
CREATE TABLE Pedidos (
    codPedido INT NOT NULL AUTO_INCREMENT,
    DataPedido DATE NOT NULL,
    IDCliente INT,
    PRIMARY KEY (codPedido),
    FOREIGN KEY (IDCliente) REFERENCES Clientes(codCliente)
);

-- ==============================
-- EXERCICIO 15: Criar tabela ItensPedido
-- ==============================
CREATE TABLE Produtos (
    codProd INT NOT NULL AUTO_INCREMENT,
    DescricaoProduto VARCHAR(50) NOT NULL,
    PRIMARY KEY (codProd)
);

CREATE TABLE ItensPedido (
    codItem INT NOT NULL AUTO_INCREMENT,
    IDPedido INT NOT NULL,
    IDProduto INT NOT NULL,
    PRIMARY KEY (codItem),
    FOREIGN KEY (IDPedido) REFERENCES Pedidos(codPedido),
    FOREIGN KEY (IDProduto) REFERENCES Produtos(codProd)
);

-- ==============================
-- EXERCICIO 17 e 18: Criar tabela Estoques
-- ==============================
CREATE TABLE Estoques (
    codEst INT NOT NULL AUTO_INCREMENT,
    Quantidade INT NOT NULL,
    IDProduto INT,
    PRIMARY KEY (codEst),
    FOREIGN KEY (IDProduto) REFERENCES Produtos(codProd)
);

-- ==============================
-- EXERCICIO 19 e 20: Criar tabela Vendas
-- ==============================
CREATE TABLE Vendas (
    codVenda INT NOT NULL AUTO_INCREMENT,
    DataVenda DATE NOT NULL,
    IDCliente INT,
    PRIMARY KEY (codVenda),
    FOREIGN KEY (IDCliente) REFERENCES Clientes(codCliente)
);
