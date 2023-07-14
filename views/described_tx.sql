DROP VIEW tx_described;
--Join of Transaction to Type description
CREATE VIEW tx_described AS
SELECT t.*, tt.type_description
FROM transaction t
JOIN tx_type tt ON t.TxCode = tt.transaction_type;