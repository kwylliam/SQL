-- Inserting entries into the tx_type table
INSERT INTO tx_type (Transaction_Type, type_description) VALUES
('D', 'deposit');

INSERT INTO tx_type (Transaction_Type, type_description) VALUES
('W', 'withdrawal');

INSERT INTO tx_type (Transaction_Type, type_description) VALUES
('B', 'bill payment');

INSERT INTO tx_type (Transaction_Type, type_description) VALUES
('P', 'purchase');

INSERT INTO tx_type (Transaction_Type, type_description) VALUES
('R', 'return');