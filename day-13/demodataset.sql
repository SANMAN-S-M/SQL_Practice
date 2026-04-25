CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(50),
    balance DECIMAL(10,2)
);

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    from_account INT,
    to_account INT,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO accounts VALUES
(1, 'Alice', 5000),
(2, 'Bob', 3000),
(3, 'Charlie', 7000);
