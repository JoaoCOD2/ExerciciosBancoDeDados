-- Exercicio 1:Crie uma tabela chamada "Funcionarios" com os campos ID (chave primária), Nome, Sobrenome e Salário.

-- Criando uma database

Create database exercicio1;

-- Usando database

Use exercicio1;

-- Criando table

Create table funcionarios (
codFunc integer not null,
nome varchar (50) not null,
sobrenome varchar (50),
salario decimal (10,2) not null
);

