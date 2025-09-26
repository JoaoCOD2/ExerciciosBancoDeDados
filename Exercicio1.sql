-- Exercicio 1:Crie uma tabela chamada "Funcionarios" com os campos ID (chave primária), Nome, Sobrenome e Salário.

-- Criando uma database

Create database exercicio1;

-- Usando database

Use exercicio1;

-- Criando table

Create table funcionarios (
codFunc integer not null,
nomeFunc varchar (50) not null,
sobrenome varchar (50),
salario decimal (10,2) not null,
dataNascimento DATE not null     -- Exercicio 2: Adicione uma coluna chamada "DataNascimento" à tabela "Funcionarios" para armazenar a data de nascimento dos funcionários.
);

-- Exercicio 3: Crie uma nova tabela chamada "Departamentos" com os campos ID (chave primária) e Nome.

create table Departamentos (
codDep integer not null, 
nomeDep varchar (50) not null
);

