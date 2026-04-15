use BD26022616;

select*from produtos2;
show tables;



CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cidade VARCHAR(100) NOT NULL,
idade INT NOT NULL,
status_cliente VARCHAR(20) NOT NULL
);
CREATE TABLE produtos2 (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(100) NOT NULL,
categoria VARCHAR(50) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
estoque INT NOT NULL
);
CREATE TABLE pedidos2 (
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT NOT NULL,
id_produto INT NOT NULL,
quantidade INT NOT NULL,
valor_total DECIMAL(10,2) NOT NULL,
status_pedido VARCHAR(20) NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_produto) REFERENCES produtos2(id_produto)
);
-- =========================================
-- INSERÇÃO DE DADOS - CLIENTES
-- =========================================
INSERT INTO clientes (nome, cidade, idade, status_cliente) VALUES
('Ana Souza', 'Campinas', 22, 'Ativo'),
('Bruno Lima', 'São Paulo', 30, 'Ativo'),
('Carla Mendes', 'Sorocaba', 19, 'Inativo'),
('Diego Alves', 'Campinas', 41, 'Ativo'),
('Eduarda Silva', 'Jundiaí', 27, 'Ativo'),
('Felipe Costa', 'São Paulo', 35, 'Inativo'),
('Gabriela Rocha', 'Valinhos', 24, 'Ativo'),
('Henrique Martins', 'Vinhedo', 29, 'Ativo'),
('Isabela Fernandes', 'Campinas', 32, 'Inativo'),
('João Pedro', 'Americana', 21, 'Ativo');
-- =========================================
-- INSERÇÃO DE DADOS - PRODUTOS
-- =========================================
INSERT INTO produtos2 (nome_produto, categoria, preco, estoque) VALUES
('Caderno', 'Papelaria', 15.50, 50),
('Caneta Azul', 'Papelaria', 3.00, 120),
('Mochila', 'Acessórios', 89.90, 15),
('Mouse', 'Informática', 45.00, 25),
('Teclado', 'Informática', 120.00, 18),
('Garrafa', 'Utilidades', 28.90, 40),
('Livro de Matemática', 'Livros', 65.00, 12),
('Agenda', 'Papelaria', 22.00, 35),
('Fone de Ouvido', 'Informática', 79.90, 20),
('Calculadora', 'Eletrônicos', 55.00, 10);
-- =========================================
-- INSERÇÃO DE DADOS - PEDIDOS
-- =========================================
INSERT INTO pedidos2 (id_cliente, id_produto, quantidade, valor_total,
status_pedido) VALUES
(1, 1, 2, 31.00, 'Entregue'),
(2, 3, 1, 89.90, 'Pendente'),
(3, 2, 5, 15.00, 'Cancelado'),
(4, 4, 1, 45.00, 'Entregue'),
(5, 6, 2, 57.80, 'Pendente'),
(6, 5, 1, 120.00, 'Entregue'),
(7, 8, 3, 66.00, 'Pendente'),
(8, 7, 1, 65.00, 'Entregue'),
(9, 9, 2, 159.80, 'Cancelado'),
(10, 10, 1, 55.00, 'Pendente');
-- =========================================
-- CONSULTAS PARA VISUALIZAR OS DADOS
-- =========================================
SELECT * FROM clientes;
SELECT * FROM produtos2;
SELECT * FROM pedidos;

-- =========================================
-- INSERÇÃO DE DADOS GERAIS / EX /
-- =========================================

UPDATE clientes
SET cidade = 'hortolandia'
WHERE nome = 'ana souza';

UPDATE produtos2
SET preco = '3.50'
WHERE nome_produto = 'caneta azul';

UPDATE pedidos2
SET status_pedido = 'entregue'
WHERE id_pedido = 2;

UPDATE produtos2
SET preco = preco + 10.00
WHERE categoria = 'Papelaria';

UPDATE clientes
SET status_cliente = 'Ativo'
WHERE status_cliente = 'Inativo';

UPDATE produtos2
SET estoque = estoque - 5
WHERE nome_produto = 'Mochila';

UPDATE pedidos2
SET status_pedido = 'Cancelado'
WHERE valor_total < 60.00;

UPDATE produtos2
SET preco = preco * 1.15
WHERE categoria = 'Informática';

UPDATE clientes
SET cidade = 'Campinas'
WHERE idade < 25;

UPDATE pedidos2 p
JOIN clientes c ON p.id_cliente = c.id_cliente
SET p.status_pedido = 'Entregue'
WHERE c.cidade = 'São Paulo';

-- =========================================
-- DELETE DE DADOS / EX /
-- =========================================

DELETE FROM produtos2
WHERE id_produto = 10;

DELETE FROM clientes
WHERE nome = 'João Pedro';

DELETE FROM pedidos2
WHERE id_pedido = 3;

DELETE FROM produtos2
WHERE categoria = 'Livros';

DELETE FROM clientes
WHERE status_cliente = 'Inativo';

DELETE FROM pedido
WHERE status_pedido = 'Cancelado';

DELETE FROM produto
WHERE estoque < 15;

DELETE FROM cliente
WHERE idade > 35;

DELETE FROM pedido
WHERE valor_total < 50.00;

DELETE p
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
WHERE c.cidade = 'Campinas';