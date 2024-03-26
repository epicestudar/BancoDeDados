CREATE TABLE Pedidos (
    ID_Pedido SERIAL PRIMARY KEY,
    ID_Cliente INT,
    Quantidade int not null,
    Data_Pedido DATE,
    Valor_Total DECIMAL(10, 2)
);

INSERT INTO Pedidos (ID_Cliente, Quantidade, Data_Pedido, Valor_Total) 
VALUES 
(1, 1, '2024-03-26', 100.50),
(2, 4, '2024-03-27', 75.20),
(3, 2, '2024-03-28', 150.80);

ALTER TABLE Pedidos
ADD COLUMN Sabor_Pizza VARCHAR(100);

-- Adiciona dados à tabela de pedidos com diferentes sabores de pizza
INSERT INTO Pedidos (ID_Cliente, Quantidade, Data_Pedido, Valor_Total, Sabor_Pizza) 
VALUES 
    (1, 1, '2024-03-27', 15.99, 'Calabresa'),
    (2, 2, '2024-03-27', 25.50, 'Margherita'),
    (3, 3, '2024-03-27', 30.75, 'Quatro Queijos');
