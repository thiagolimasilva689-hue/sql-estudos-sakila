CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    preco REAL NOT NULL,
    quantidade INTEGER NOT NULL
);

INSERT INTO produtos (id, nome, categoria, preco, quantidade) VALUES
(1, 'Arroz', 'Alimentos', 25.90, 100),
(2, 'Feijão', 'Alimentos', 8.50, 150),
(3, 'Notebook', 'Eletrônicos', 3500.00, 10),
(4, 'Mouse', 'Eletrônicos', 89.90, 50),
(5, 'Camiseta', 'Vestuário', 49.90, 80),
(6, 'Calça Jeans', 'Vestuário', 129.90, 40),
(7, 'Detergente', 'Limpeza', 3.50, 200),
(8, 'Sabão em Pó', 'Limpeza', 18.90, 120),
(9, 'Smartphone', 'Eletrônicos', 2200.00, 25),
(10, 'Macarrão', 'Alimentos', 4.80, 180);