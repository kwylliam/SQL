--transaction_ref
CREATE VIEW transaction_ref AS
SELECT t.*, b.*
FROM transaction t JOIN branch b ON t.RefNbr = b.branch_number
WHERE t.TxCode IN ('D', 'W')
UNION
SELECT t.*, m.*
FROM transaction t JOIN merchant m ON t.RefNbr = m.merchant_number
WHERE t.TxCode IN ('B', 'P', 'R');
