-- Meu primeiro script SQL
-- Mostrando uma mensagem simples e consulta básica

-- Selecionando uma mensagem
SELECT 'Olá, mundo! Estou aprendendo SQL' AS mensagem;

-- Criando uma tabela de exemplo
CREATE TABLE IF NOT EXISTS teste (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    data_criacao DATE
);

-- Inserindo dados de exemplo
INSERT INTO teste (nome, data_criacao) 
VALUES ('Primeiro registro', date('now'));

-- Consultando os dados inseridos
SELECT * FROM teste;
