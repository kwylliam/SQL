--Provide a count and total amount of Transactions for each Type description (1 mark) 
SELECT typ.type_description, COUNT(t.txCode) AS Num_of_TXs
FROM tx_type typ
JOIN transaction t ON t.txCode=typ.transaction_type
GROUP BY typ.type_description
