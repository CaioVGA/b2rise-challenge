-- CREATE TABLES --

CREATE TABLE IF NOT EXISTS categories (
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS customers (
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    country VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    category_id INT NOT NULL,
    CONSTRAINT fk_category
        FOREIGN KEY (category_id)
        REFERENCES categories(id)
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    product VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    product_id INT NOT NULL,
    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(id)
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    "name" VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees (
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    salary NUMERIC(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    total NUMERIC(10, 2) NOT NULL,
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(id)
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    account_id INT NOT NULL,
    transaction_date DATE NOT NULL,
    amount NUMERIC(10, 2) NOT NULL
);

-- DATA INCREMENT --

INSERT INTO categories (name) VALUES
('Eletrônicos'),
('Roupas'),
('Alimentos'),
('Calçados'),
('Acessórios'),
('Livros'),
('Brinquedos'),
('Móveis');

INSERT INTO customers (name, country) VALUES
('João Silva', 'Brasil'),
('Maria Souza', 'Portugal'),
('Carlos Oliveira', 'Estados Unidos'),
('Ana Costa', 'Canadá'),
('Pedro Santos', 'Espanha'),
('Luiza Fernandes', 'França'),
('Fernando Alves', 'Alemanha'),
('Juliana Ramos', 'Itália');

INSERT INTO products (name, category_id) VALUES
('Smartphone', 1),
('Notebook', 1),
('Camiseta', 2),
('Arroz', 3),
('Tênis', 4),
('Mochila', 5),
('Fone de Ouvido', 1),
('Relógio', 5);

INSERT INTO sales (product, quantity, price, product_id) VALUES
('Smartphone', 105, 1500.00, 1),
('Notebook', 95, 3000.00, 2),
('Camiseta', 120, 50.00, 3),
('Tablet', 88, 1200.00, 1),
('Tênis', 65, 250.00, 5),
('Mochila', 62, 150.00, 6),
('Fone de Ouvido', 230, 100.00, 7),
('Relógio', 100, 500.00, 8);        

INSERT INTO users (email, name) VALUES
('joao.silva@email.com', 'João Silva'),
('maria.souza@email.com', 'Maria Souza'),
('carlos.oliveira@email.com', 'Carlos Oliveira'),
('ana.costa@email.com', 'Ana Pereira Costa'),
('ana.costa@email.com', 'Ana Paula Costa'),
('pedro.santos@email.com', 'Pedro Santos'),
('luiza.fernandes@email.com', 'Luiza Fernandes'),
('fernando.alves@email.com', 'Fernando Alves'),
('juliana.ramos@email.com', 'Juliana Ramos');

INSERT INTO employees (name, salary) VALUES
('Ana Costa', 5000.00),
('Pedro Santos', 4500.00),
('Luiza Fernandes', 6000.00),
('Fernando Alves', 5500.00),
('Juliana Ramos', 4800.00),
('Ricardo Lima', 5200.00),
('Camila Souza', 4700.00),
('Gustavo Oliveira', 5100.00);

INSERT INTO orders (customer_id, total) VALUES
(1, 1500.00),
(2, 200.50),
(3, 75.99),
(4, 300.00),
(5, 450.25),
(6, 120.75),
(7, 600.00),
(8, 90.50);

INSERT INTO transactions (account_id, transaction_date, amount) VALUES
(1, '2023-12-24', 1000.00),
(2, '2024-10-01', -500.00),
(3, '2024-11-03', 200.00),
(4, '2024-11-20', -300.00),
(5, '2025-01-01', 150.00),
(6, '2025-01-06', -100.00),
(7, '2025-01-12', 400.00),
(8, '2025-01-28', -250.00);