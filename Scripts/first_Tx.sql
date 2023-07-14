--List of each Account showing the first Transaction date, type, and amount. 
--(Hint: This is a correlated sub-query.) (2 marks) 

SELECT accountnbr, txcode, transaction_date, amount
FROM (
  SELECT accountnbr, transaction_date, txcode, amount,
         ROW_NUMBER() OVER (PARTITION BY accountNbr ORDER BY transaction_Date) AS row_num
  FROM transaction
)
WHERE row_num = 1;