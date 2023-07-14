--List of only the Accounts that have multiple Clients associated (1 mark) 
SELECT a.account_number, COUNT(o.client_number) AS Num_Clients
FROM account a
JOIN owns o ON a.account_number = o.account_number
GROUP BY a.account_number
HAVING COUNT(o.Client_Number) > 1;