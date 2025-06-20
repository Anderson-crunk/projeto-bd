-- Criação da tabela produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    estoque INT
);

-- Criação da tabela pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo dados na tabela produtos
INSERT INTO produtos (id, nome, preco, estoque) VALUES
(1, 'Notebook', 3500.00, 10),
(2, 'Mouse Gamer', 150.00, 50),
(3, 'Teclado Mecânico', 250.00, 30);

-- Inserindo dados na tabela pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-06-01'),
(2, 2, 1, '2025-06-10'),
(3, 3, 3, '2025-06-15');
