--Count and Total Amount for each Transaction Type within each Account 
--(Hint: This is an extended GROUP BY.) (2 marks) 
SELECT accountnbr, txcode, COUNT(txcode) as Num_of_tx, SUM(amount)as Total
FROM transaction
GROUP BY accountnbr, txcode
ORDER BY accountnbr